part of 'weather_bloc.dart';

@freezed
abstract class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.fetchWeather(String? city) = WeatherFetchWeather;
  const factory WeatherEvent.refreshWeather() = WeatherRefreshWeather;
  const factory WeatherEvent.toggleUnits() = WeatherToggleUnits;
}
