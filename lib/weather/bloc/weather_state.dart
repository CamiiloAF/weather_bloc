part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial(
      [@Default(TemperatureUnits.celsius)
          TemperatureUnits temperatureUnits]) = _WeatherStateInitial;

  const factory WeatherState.loading(
      [@Default(TemperatureUnits.celsius)
          TemperatureUnits temperatureUnits]) = _WeatherStateLoading;

  const factory WeatherState.loaded({
    required TemperatureUnits temperatureUnits,
    required Weather weather,
  }) = WeatherStateLoaded;

  const factory WeatherState.failed(
      [@Default(TemperatureUnits.celsius)
          TemperatureUnits temperatureUnits]) = _WeatherStateFailed;

  factory WeatherState.fromJson(Map<String, dynamic> json) =>
      _$WeatherStateFromJson(json);
}
