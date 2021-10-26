// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherStateInitial _$$_WeatherStateInitialFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_WeatherStateInitial',
      json,
      ($checkedConvert) {
        final val = _$_WeatherStateInitial(
          $checkedConvert(
              'temperature_units',
              (v) =>
                  $enumDecodeNullable(_$TemperatureUnitsEnumMap, v) ??
                  TemperatureUnits.celsius),
        );
        return val;
      },
      fieldKeyMap: const {'temperatureUnits': 'temperature_units'},
    );

Map<String, dynamic> _$$_WeatherStateInitialToJson(
        _$_WeatherStateInitial instance) =>
    <String, dynamic>{
      'temperature_units': _$TemperatureUnitsEnumMap[instance.temperatureUnits],
    };

const _$TemperatureUnitsEnumMap = {
  TemperatureUnits.fahrenheit: 'fahrenheit',
  TemperatureUnits.celsius: 'celsius',
};

_$_WeatherStateLoading _$$_WeatherStateLoadingFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_WeatherStateLoading',
      json,
      ($checkedConvert) {
        final val = _$_WeatherStateLoading(
          $checkedConvert(
              'temperature_units',
              (v) =>
                  $enumDecodeNullable(_$TemperatureUnitsEnumMap, v) ??
                  TemperatureUnits.celsius),
        );
        return val;
      },
      fieldKeyMap: const {'temperatureUnits': 'temperature_units'},
    );

Map<String, dynamic> _$$_WeatherStateLoadingToJson(
        _$_WeatherStateLoading instance) =>
    <String, dynamic>{
      'temperature_units': _$TemperatureUnitsEnumMap[instance.temperatureUnits],
    };

_$WeatherStateLoaded _$$WeatherStateLoadedFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$WeatherStateLoaded',
      json,
      ($checkedConvert) {
        final val = _$WeatherStateLoaded(
          temperatureUnits: $checkedConvert('temperature_units',
              (v) => $enumDecode(_$TemperatureUnitsEnumMap, v)),
          weather: $checkedConvert(
              'weather', (v) => Weather.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'temperatureUnits': 'temperature_units'},
    );

Map<String, dynamic> _$$WeatherStateLoadedToJson(
        _$WeatherStateLoaded instance) =>
    <String, dynamic>{
      'temperature_units': _$TemperatureUnitsEnumMap[instance.temperatureUnits],
      'weather': instance.weather.toJson(),
    };

_$_WeatherStateFailed _$$_WeatherStateFailedFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_WeatherStateFailed',
      json,
      ($checkedConvert) {
        final val = _$_WeatherStateFailed(
          $checkedConvert(
              'temperature_units',
              (v) =>
                  $enumDecodeNullable(_$TemperatureUnitsEnumMap, v) ??
                  TemperatureUnits.celsius),
        );
        return val;
      },
      fieldKeyMap: const {'temperatureUnits': 'temperature_units'},
    );

Map<String, dynamic> _$$_WeatherStateFailedToJson(
        _$_WeatherStateFailed instance) =>
    <String, dynamic>{
      'temperature_units': _$TemperatureUnitsEnumMap[instance.temperatureUnits],
    };
