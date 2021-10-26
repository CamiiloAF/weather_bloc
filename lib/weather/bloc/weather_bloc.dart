import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_bloc/weather/models/models.dart';
import 'package:weather_repository/weather_repository.dart'
    show WeatherRepository;

part 'weather_bloc.freezed.dart';
part 'weather_bloc.g.dart';
part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends HydratedBloc<WeatherEvent, WeatherState> {
  final WeatherRepository _weatherRepository;

  WeatherBloc(this._weatherRepository) : super(const WeatherState.initial()) {
    on<WeatherFetchWeather>((event, emit) async {
      await _onFetchWeather(event, emit);
    });

    on<WeatherRefreshWeather>((event, emit) async {
      await _onRefreshWeather(event, emit);
    });

    on<WeatherToggleUnits>((event, emit) {
      _onToggleUnits(event, emit);
    });
  }

  Future<void> _onFetchWeather(
      WeatherFetchWeather event, Emitter<WeatherState> emit) async {
    final city = event.city;
    if (city == null || city.isEmpty) return;

    emit(const WeatherState.loading()
        .copyWith(temperatureUnits: state.temperatureUnits));

    try {
      final weather =
          Weather.fromRepository(await _weatherRepository.getWeather(city));

      final units = state.temperatureUnits;
      final value = units.isFahrenheit
          ? weather.temperature.value.toFahrenheit()
          : weather.temperature.value;

      emit(
        WeatherStateLoaded(
          temperatureUnits: units,
          weather: weather.copyWith(temperature: Temperature(value: value)),
        ),
      );
    } on Exception {
      emit(WeatherState.failed()
          .copyWith(temperatureUnits: state.temperatureUnits));
    }
  }

  Future<void> _onRefreshWeather(
      WeatherRefreshWeather event, Emitter<WeatherState> emit) async {
    if (state is! WeatherStateLoaded) return;

    try {
      final weather = Weather.fromRepository(await _weatherRepository
          .getWeather((state as WeatherStateLoaded).weather.location));

      final units = state.temperatureUnits;
      final value = units.isFahrenheit
          ? weather.temperature.value.toFahrenheit()
          : weather.temperature.value;

      emit(WeatherStateLoaded(
        temperatureUnits: units,
        weather: weather.copyWith(temperature: Temperature(value: value)),
      ));
    } on Exception {
      emit(state);
    }
  }

  void _onToggleUnits(WeatherToggleUnits event, Emitter<WeatherState> emit) {
    final units = state.temperatureUnits.isFahrenheit
        ? TemperatureUnits.celsius
        : TemperatureUnits.fahrenheit;

    if (state is! WeatherStateLoaded) {
      emit(state.copyWith(temperatureUnits: units));
      return;
    }

    final weather = (state as WeatherStateLoaded).weather;

    if (weather != Weather.empty) {
      final temperature = weather.temperature;
      final value = units.isCelsius
          ? temperature.value.toCelsius()
          : temperature.value.toFahrenheit();

      emit(
        WeatherStateLoaded(
          temperatureUnits: units,
          weather: weather.copyWith(temperature: Temperature(value: value)),
        ),
      );
    }
  }

  @override
  WeatherState fromJson(Map<String, dynamic> json) =>
      WeatherState.fromJson(json);

  @override
  Map<String, dynamic> toJson(WeatherState state) => state.toJson();
}

extension on double {
  double toFahrenheit() => ((this * 9 / 5) + 32);

  double toCelsius() => ((this - 32) * 5 / 9);
}
