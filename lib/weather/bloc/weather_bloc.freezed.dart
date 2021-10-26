// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherEventTearOff {
  const _$WeatherEventTearOff();

  WeatherFetchWeather fetchWeather(String? city) {
    return WeatherFetchWeather(
      city,
    );
  }

  WeatherRefreshWeather refreshWeather() {
    return const WeatherRefreshWeather();
  }

  WeatherToggleUnits toggleUnits() {
    return const WeatherToggleUnits();
  }
}

/// @nodoc
const $WeatherEvent = _$WeatherEventTearOff();

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? city) fetchWeather,
    required TResult Function() refreshWeather,
    required TResult Function() toggleUnits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? city)? fetchWeather,
    TResult Function()? refreshWeather,
    TResult Function()? toggleUnits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? city)? fetchWeather,
    TResult Function()? refreshWeather,
    TResult Function()? toggleUnits,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherFetchWeather value) fetchWeather,
    required TResult Function(WeatherRefreshWeather value) refreshWeather,
    required TResult Function(WeatherToggleUnits value) toggleUnits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeatherFetchWeather value)? fetchWeather,
    TResult Function(WeatherRefreshWeather value)? refreshWeather,
    TResult Function(WeatherToggleUnits value)? toggleUnits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherFetchWeather value)? fetchWeather,
    TResult Function(WeatherRefreshWeather value)? refreshWeather,
    TResult Function(WeatherToggleUnits value)? toggleUnits,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res> implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  final WeatherEvent _value;
  // ignore: unused_field
  final $Res Function(WeatherEvent) _then;
}

/// @nodoc
abstract class $WeatherFetchWeatherCopyWith<$Res> {
  factory $WeatherFetchWeatherCopyWith(
          WeatherFetchWeather value, $Res Function(WeatherFetchWeather) then) =
      _$WeatherFetchWeatherCopyWithImpl<$Res>;
  $Res call({String? city});
}

/// @nodoc
class _$WeatherFetchWeatherCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res>
    implements $WeatherFetchWeatherCopyWith<$Res> {
  _$WeatherFetchWeatherCopyWithImpl(
      WeatherFetchWeather _value, $Res Function(WeatherFetchWeather) _then)
      : super(_value, (v) => _then(v as WeatherFetchWeather));

  @override
  WeatherFetchWeather get _value => super._value as WeatherFetchWeather;

  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(WeatherFetchWeather(
      city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WeatherFetchWeather implements WeatherFetchWeather {
  const _$WeatherFetchWeather(this.city);

  @override
  final String? city;

  @override
  String toString() {
    return 'WeatherEvent.fetchWeather(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherFetchWeather &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(runtimeType, city);

  @JsonKey(ignore: true)
  @override
  $WeatherFetchWeatherCopyWith<WeatherFetchWeather> get copyWith =>
      _$WeatherFetchWeatherCopyWithImpl<WeatherFetchWeather>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? city) fetchWeather,
    required TResult Function() refreshWeather,
    required TResult Function() toggleUnits,
  }) {
    return fetchWeather(city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? city)? fetchWeather,
    TResult Function()? refreshWeather,
    TResult Function()? toggleUnits,
  }) {
    return fetchWeather?.call(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? city)? fetchWeather,
    TResult Function()? refreshWeather,
    TResult Function()? toggleUnits,
    required TResult orElse(),
  }) {
    if (fetchWeather != null) {
      return fetchWeather(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherFetchWeather value) fetchWeather,
    required TResult Function(WeatherRefreshWeather value) refreshWeather,
    required TResult Function(WeatherToggleUnits value) toggleUnits,
  }) {
    return fetchWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeatherFetchWeather value)? fetchWeather,
    TResult Function(WeatherRefreshWeather value)? refreshWeather,
    TResult Function(WeatherToggleUnits value)? toggleUnits,
  }) {
    return fetchWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherFetchWeather value)? fetchWeather,
    TResult Function(WeatherRefreshWeather value)? refreshWeather,
    TResult Function(WeatherToggleUnits value)? toggleUnits,
    required TResult orElse(),
  }) {
    if (fetchWeather != null) {
      return fetchWeather(this);
    }
    return orElse();
  }
}

abstract class WeatherFetchWeather implements WeatherEvent {
  const factory WeatherFetchWeather(String? city) = _$WeatherFetchWeather;

  String? get city;
  @JsonKey(ignore: true)
  $WeatherFetchWeatherCopyWith<WeatherFetchWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherRefreshWeatherCopyWith<$Res> {
  factory $WeatherRefreshWeatherCopyWith(WeatherRefreshWeather value,
          $Res Function(WeatherRefreshWeather) then) =
      _$WeatherRefreshWeatherCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherRefreshWeatherCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res>
    implements $WeatherRefreshWeatherCopyWith<$Res> {
  _$WeatherRefreshWeatherCopyWithImpl(
      WeatherRefreshWeather _value, $Res Function(WeatherRefreshWeather) _then)
      : super(_value, (v) => _then(v as WeatherRefreshWeather));

  @override
  WeatherRefreshWeather get _value => super._value as WeatherRefreshWeather;
}

/// @nodoc

class _$WeatherRefreshWeather implements WeatherRefreshWeather {
  const _$WeatherRefreshWeather();

  @override
  String toString() {
    return 'WeatherEvent.refreshWeather()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WeatherRefreshWeather);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? city) fetchWeather,
    required TResult Function() refreshWeather,
    required TResult Function() toggleUnits,
  }) {
    return refreshWeather();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? city)? fetchWeather,
    TResult Function()? refreshWeather,
    TResult Function()? toggleUnits,
  }) {
    return refreshWeather?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? city)? fetchWeather,
    TResult Function()? refreshWeather,
    TResult Function()? toggleUnits,
    required TResult orElse(),
  }) {
    if (refreshWeather != null) {
      return refreshWeather();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherFetchWeather value) fetchWeather,
    required TResult Function(WeatherRefreshWeather value) refreshWeather,
    required TResult Function(WeatherToggleUnits value) toggleUnits,
  }) {
    return refreshWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeatherFetchWeather value)? fetchWeather,
    TResult Function(WeatherRefreshWeather value)? refreshWeather,
    TResult Function(WeatherToggleUnits value)? toggleUnits,
  }) {
    return refreshWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherFetchWeather value)? fetchWeather,
    TResult Function(WeatherRefreshWeather value)? refreshWeather,
    TResult Function(WeatherToggleUnits value)? toggleUnits,
    required TResult orElse(),
  }) {
    if (refreshWeather != null) {
      return refreshWeather(this);
    }
    return orElse();
  }
}

abstract class WeatherRefreshWeather implements WeatherEvent {
  const factory WeatherRefreshWeather() = _$WeatherRefreshWeather;
}

/// @nodoc
abstract class $WeatherToggleUnitsCopyWith<$Res> {
  factory $WeatherToggleUnitsCopyWith(
          WeatherToggleUnits value, $Res Function(WeatherToggleUnits) then) =
      _$WeatherToggleUnitsCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherToggleUnitsCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res>
    implements $WeatherToggleUnitsCopyWith<$Res> {
  _$WeatherToggleUnitsCopyWithImpl(
      WeatherToggleUnits _value, $Res Function(WeatherToggleUnits) _then)
      : super(_value, (v) => _then(v as WeatherToggleUnits));

  @override
  WeatherToggleUnits get _value => super._value as WeatherToggleUnits;
}

/// @nodoc

class _$WeatherToggleUnits implements WeatherToggleUnits {
  const _$WeatherToggleUnits();

  @override
  String toString() {
    return 'WeatherEvent.toggleUnits()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WeatherToggleUnits);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? city) fetchWeather,
    required TResult Function() refreshWeather,
    required TResult Function() toggleUnits,
  }) {
    return toggleUnits();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? city)? fetchWeather,
    TResult Function()? refreshWeather,
    TResult Function()? toggleUnits,
  }) {
    return toggleUnits?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? city)? fetchWeather,
    TResult Function()? refreshWeather,
    TResult Function()? toggleUnits,
    required TResult orElse(),
  }) {
    if (toggleUnits != null) {
      return toggleUnits();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherFetchWeather value) fetchWeather,
    required TResult Function(WeatherRefreshWeather value) refreshWeather,
    required TResult Function(WeatherToggleUnits value) toggleUnits,
  }) {
    return toggleUnits(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeatherFetchWeather value)? fetchWeather,
    TResult Function(WeatherRefreshWeather value)? refreshWeather,
    TResult Function(WeatherToggleUnits value)? toggleUnits,
  }) {
    return toggleUnits?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherFetchWeather value)? fetchWeather,
    TResult Function(WeatherRefreshWeather value)? refreshWeather,
    TResult Function(WeatherToggleUnits value)? toggleUnits,
    required TResult orElse(),
  }) {
    if (toggleUnits != null) {
      return toggleUnits(this);
    }
    return orElse();
  }
}

abstract class WeatherToggleUnits implements WeatherEvent {
  const factory WeatherToggleUnits() = _$WeatherToggleUnits;
}

WeatherState _$WeatherStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String?) {
    case 'initial':
      return _WeatherStateInitial.fromJson(json);
    case 'loading':
      return _WeatherStateLoading.fromJson(json);
    case 'loaded':
      return WeatherStateLoaded.fromJson(json);
    case 'failed':
      return _WeatherStateFailed.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WeatherState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$WeatherStateTearOff {
  const _$WeatherStateTearOff();

  _WeatherStateInitial initial(
      [TemperatureUnits temperatureUnits = TemperatureUnits.celsius]) {
    return _WeatherStateInitial(
      temperatureUnits,
    );
  }

  _WeatherStateLoading loading(
      [TemperatureUnits temperatureUnits = TemperatureUnits.celsius]) {
    return _WeatherStateLoading(
      temperatureUnits,
    );
  }

  WeatherStateLoaded loaded(
      {required TemperatureUnits temperatureUnits, required Weather weather}) {
    return WeatherStateLoaded(
      temperatureUnits: temperatureUnits,
      weather: weather,
    );
  }

  _WeatherStateFailed failed(
      [TemperatureUnits temperatureUnits = TemperatureUnits.celsius]) {
    return _WeatherStateFailed(
      temperatureUnits,
    );
  }

  WeatherState fromJson(Map<String, Object?> json) {
    return WeatherState.fromJson(json);
  }
}

/// @nodoc
const $WeatherState = _$WeatherStateTearOff();

/// @nodoc
mixin _$WeatherState {
  TemperatureUnits get temperatureUnits => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TemperatureUnits temperatureUnits) initial,
    required TResult Function(TemperatureUnits temperatureUnits) loading,
    required TResult Function(
            TemperatureUnits temperatureUnits, Weather weather)
        loaded,
    required TResult Function(TemperatureUnits temperatureUnits) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TemperatureUnits temperatureUnits)? initial,
    TResult Function(TemperatureUnits temperatureUnits)? loading,
    TResult Function(TemperatureUnits temperatureUnits, Weather weather)?
        loaded,
    TResult Function(TemperatureUnits temperatureUnits)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TemperatureUnits temperatureUnits)? initial,
    TResult Function(TemperatureUnits temperatureUnits)? loading,
    TResult Function(TemperatureUnits temperatureUnits, Weather weather)?
        loaded,
    TResult Function(TemperatureUnits temperatureUnits)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateInitial value) initial,
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(WeatherStateLoaded value) loaded,
    required TResult Function(_WeatherStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(WeatherStateLoaded value)? loaded,
    TResult Function(_WeatherStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(WeatherStateLoaded value)? loaded,
    TResult Function(_WeatherStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
  $Res call({TemperatureUnits temperatureUnits});
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;

  @override
  $Res call({
    Object? temperatureUnits = freezed,
  }) {
    return _then(_value.copyWith(
      temperatureUnits: temperatureUnits == freezed
          ? _value.temperatureUnits
          : temperatureUnits // ignore: cast_nullable_to_non_nullable
              as TemperatureUnits,
    ));
  }
}

/// @nodoc
abstract class _$WeatherStateInitialCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$WeatherStateInitialCopyWith(_WeatherStateInitial value,
          $Res Function(_WeatherStateInitial) then) =
      __$WeatherStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({TemperatureUnits temperatureUnits});
}

/// @nodoc
class __$WeatherStateInitialCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateInitialCopyWith<$Res> {
  __$WeatherStateInitialCopyWithImpl(
      _WeatherStateInitial _value, $Res Function(_WeatherStateInitial) _then)
      : super(_value, (v) => _then(v as _WeatherStateInitial));

  @override
  _WeatherStateInitial get _value => super._value as _WeatherStateInitial;

  @override
  $Res call({
    Object? temperatureUnits = freezed,
  }) {
    return _then(_WeatherStateInitial(
      temperatureUnits == freezed
          ? _value.temperatureUnits
          : temperatureUnits // ignore: cast_nullable_to_non_nullable
              as TemperatureUnits,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherStateInitial implements _WeatherStateInitial {
  const _$_WeatherStateInitial(
      [this.temperatureUnits = TemperatureUnits.celsius]);

  factory _$_WeatherStateInitial.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherStateInitialFromJson(json);

  @JsonKey(defaultValue: TemperatureUnits.celsius)
  @override
  final TemperatureUnits temperatureUnits;

  @override
  String toString() {
    return 'WeatherState.initial(temperatureUnits: $temperatureUnits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherStateInitial &&
            (identical(other.temperatureUnits, temperatureUnits) ||
                other.temperatureUnits == temperatureUnits));
  }

  @override
  int get hashCode => Object.hash(runtimeType, temperatureUnits);

  @JsonKey(ignore: true)
  @override
  _$WeatherStateInitialCopyWith<_WeatherStateInitial> get copyWith =>
      __$WeatherStateInitialCopyWithImpl<_WeatherStateInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TemperatureUnits temperatureUnits) initial,
    required TResult Function(TemperatureUnits temperatureUnits) loading,
    required TResult Function(
            TemperatureUnits temperatureUnits, Weather weather)
        loaded,
    required TResult Function(TemperatureUnits temperatureUnits) failed,
  }) {
    return initial(temperatureUnits);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TemperatureUnits temperatureUnits)? initial,
    TResult Function(TemperatureUnits temperatureUnits)? loading,
    TResult Function(TemperatureUnits temperatureUnits, Weather weather)?
        loaded,
    TResult Function(TemperatureUnits temperatureUnits)? failed,
  }) {
    return initial?.call(temperatureUnits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TemperatureUnits temperatureUnits)? initial,
    TResult Function(TemperatureUnits temperatureUnits)? loading,
    TResult Function(TemperatureUnits temperatureUnits, Weather weather)?
        loaded,
    TResult Function(TemperatureUnits temperatureUnits)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(temperatureUnits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateInitial value) initial,
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(WeatherStateLoaded value) loaded,
    required TResult Function(_WeatherStateFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(WeatherStateLoaded value)? loaded,
    TResult Function(_WeatherStateFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(WeatherStateLoaded value)? loaded,
    TResult Function(_WeatherStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherStateInitialToJson(this)..['runtimeType'] = 'initial';
  }
}

abstract class _WeatherStateInitial implements WeatherState {
  const factory _WeatherStateInitial([TemperatureUnits temperatureUnits]) =
      _$_WeatherStateInitial;

  factory _WeatherStateInitial.fromJson(Map<String, dynamic> json) =
      _$_WeatherStateInitial.fromJson;

  @override
  TemperatureUnits get temperatureUnits;
  @override
  @JsonKey(ignore: true)
  _$WeatherStateInitialCopyWith<_WeatherStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WeatherStateLoadingCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$WeatherStateLoadingCopyWith(_WeatherStateLoading value,
          $Res Function(_WeatherStateLoading) then) =
      __$WeatherStateLoadingCopyWithImpl<$Res>;
  @override
  $Res call({TemperatureUnits temperatureUnits});
}

/// @nodoc
class __$WeatherStateLoadingCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateLoadingCopyWith<$Res> {
  __$WeatherStateLoadingCopyWithImpl(
      _WeatherStateLoading _value, $Res Function(_WeatherStateLoading) _then)
      : super(_value, (v) => _then(v as _WeatherStateLoading));

  @override
  _WeatherStateLoading get _value => super._value as _WeatherStateLoading;

  @override
  $Res call({
    Object? temperatureUnits = freezed,
  }) {
    return _then(_WeatherStateLoading(
      temperatureUnits == freezed
          ? _value.temperatureUnits
          : temperatureUnits // ignore: cast_nullable_to_non_nullable
              as TemperatureUnits,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherStateLoading implements _WeatherStateLoading {
  const _$_WeatherStateLoading(
      [this.temperatureUnits = TemperatureUnits.celsius]);

  factory _$_WeatherStateLoading.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherStateLoadingFromJson(json);

  @JsonKey(defaultValue: TemperatureUnits.celsius)
  @override
  final TemperatureUnits temperatureUnits;

  @override
  String toString() {
    return 'WeatherState.loading(temperatureUnits: $temperatureUnits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherStateLoading &&
            (identical(other.temperatureUnits, temperatureUnits) ||
                other.temperatureUnits == temperatureUnits));
  }

  @override
  int get hashCode => Object.hash(runtimeType, temperatureUnits);

  @JsonKey(ignore: true)
  @override
  _$WeatherStateLoadingCopyWith<_WeatherStateLoading> get copyWith =>
      __$WeatherStateLoadingCopyWithImpl<_WeatherStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TemperatureUnits temperatureUnits) initial,
    required TResult Function(TemperatureUnits temperatureUnits) loading,
    required TResult Function(
            TemperatureUnits temperatureUnits, Weather weather)
        loaded,
    required TResult Function(TemperatureUnits temperatureUnits) failed,
  }) {
    return loading(temperatureUnits);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TemperatureUnits temperatureUnits)? initial,
    TResult Function(TemperatureUnits temperatureUnits)? loading,
    TResult Function(TemperatureUnits temperatureUnits, Weather weather)?
        loaded,
    TResult Function(TemperatureUnits temperatureUnits)? failed,
  }) {
    return loading?.call(temperatureUnits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TemperatureUnits temperatureUnits)? initial,
    TResult Function(TemperatureUnits temperatureUnits)? loading,
    TResult Function(TemperatureUnits temperatureUnits, Weather weather)?
        loaded,
    TResult Function(TemperatureUnits temperatureUnits)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(temperatureUnits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateInitial value) initial,
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(WeatherStateLoaded value) loaded,
    required TResult Function(_WeatherStateFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(WeatherStateLoaded value)? loaded,
    TResult Function(_WeatherStateFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(WeatherStateLoaded value)? loaded,
    TResult Function(_WeatherStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherStateLoadingToJson(this)..['runtimeType'] = 'loading';
  }
}

abstract class _WeatherStateLoading implements WeatherState {
  const factory _WeatherStateLoading([TemperatureUnits temperatureUnits]) =
      _$_WeatherStateLoading;

  factory _WeatherStateLoading.fromJson(Map<String, dynamic> json) =
      _$_WeatherStateLoading.fromJson;

  @override
  TemperatureUnits get temperatureUnits;
  @override
  @JsonKey(ignore: true)
  _$WeatherStateLoadingCopyWith<_WeatherStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateLoadedCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory $WeatherStateLoadedCopyWith(
          WeatherStateLoaded value, $Res Function(WeatherStateLoaded) then) =
      _$WeatherStateLoadedCopyWithImpl<$Res>;
  @override
  $Res call({TemperatureUnits temperatureUnits, Weather weather});

  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class _$WeatherStateLoadedCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements $WeatherStateLoadedCopyWith<$Res> {
  _$WeatherStateLoadedCopyWithImpl(
      WeatherStateLoaded _value, $Res Function(WeatherStateLoaded) _then)
      : super(_value, (v) => _then(v as WeatherStateLoaded));

  @override
  WeatherStateLoaded get _value => super._value as WeatherStateLoaded;

  @override
  $Res call({
    Object? temperatureUnits = freezed,
    Object? weather = freezed,
  }) {
    return _then(WeatherStateLoaded(
      temperatureUnits: temperatureUnits == freezed
          ? _value.temperatureUnits
          : temperatureUnits // ignore: cast_nullable_to_non_nullable
              as TemperatureUnits,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }

  @override
  $WeatherCopyWith<$Res> get weather {
    return $WeatherCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherStateLoaded implements WeatherStateLoaded {
  const _$WeatherStateLoaded(
      {required this.temperatureUnits, required this.weather});

  factory _$WeatherStateLoaded.fromJson(Map<String, dynamic> json) =>
      _$$WeatherStateLoadedFromJson(json);

  @override
  final TemperatureUnits temperatureUnits;
  @override
  final Weather weather;

  @override
  String toString() {
    return 'WeatherState.loaded(temperatureUnits: $temperatureUnits, weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherStateLoaded &&
            (identical(other.temperatureUnits, temperatureUnits) ||
                other.temperatureUnits == temperatureUnits) &&
            (identical(other.weather, weather) || other.weather == weather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, temperatureUnits, weather);

  @JsonKey(ignore: true)
  @override
  $WeatherStateLoadedCopyWith<WeatherStateLoaded> get copyWith =>
      _$WeatherStateLoadedCopyWithImpl<WeatherStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TemperatureUnits temperatureUnits) initial,
    required TResult Function(TemperatureUnits temperatureUnits) loading,
    required TResult Function(
            TemperatureUnits temperatureUnits, Weather weather)
        loaded,
    required TResult Function(TemperatureUnits temperatureUnits) failed,
  }) {
    return loaded(temperatureUnits, weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TemperatureUnits temperatureUnits)? initial,
    TResult Function(TemperatureUnits temperatureUnits)? loading,
    TResult Function(TemperatureUnits temperatureUnits, Weather weather)?
        loaded,
    TResult Function(TemperatureUnits temperatureUnits)? failed,
  }) {
    return loaded?.call(temperatureUnits, weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TemperatureUnits temperatureUnits)? initial,
    TResult Function(TemperatureUnits temperatureUnits)? loading,
    TResult Function(TemperatureUnits temperatureUnits, Weather weather)?
        loaded,
    TResult Function(TemperatureUnits temperatureUnits)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(temperatureUnits, weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateInitial value) initial,
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(WeatherStateLoaded value) loaded,
    required TResult Function(_WeatherStateFailed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(WeatherStateLoaded value)? loaded,
    TResult Function(_WeatherStateFailed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(WeatherStateLoaded value)? loaded,
    TResult Function(_WeatherStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherStateLoadedToJson(this)..['runtimeType'] = 'loaded';
  }
}

abstract class WeatherStateLoaded implements WeatherState {
  const factory WeatherStateLoaded(
      {required TemperatureUnits temperatureUnits,
      required Weather weather}) = _$WeatherStateLoaded;

  factory WeatherStateLoaded.fromJson(Map<String, dynamic> json) =
      _$WeatherStateLoaded.fromJson;

  @override
  TemperatureUnits get temperatureUnits;
  Weather get weather;
  @override
  @JsonKey(ignore: true)
  $WeatherStateLoadedCopyWith<WeatherStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WeatherStateFailedCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$WeatherStateFailedCopyWith(
          _WeatherStateFailed value, $Res Function(_WeatherStateFailed) then) =
      __$WeatherStateFailedCopyWithImpl<$Res>;
  @override
  $Res call({TemperatureUnits temperatureUnits});
}

/// @nodoc
class __$WeatherStateFailedCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateFailedCopyWith<$Res> {
  __$WeatherStateFailedCopyWithImpl(
      _WeatherStateFailed _value, $Res Function(_WeatherStateFailed) _then)
      : super(_value, (v) => _then(v as _WeatherStateFailed));

  @override
  _WeatherStateFailed get _value => super._value as _WeatherStateFailed;

  @override
  $Res call({
    Object? temperatureUnits = freezed,
  }) {
    return _then(_WeatherStateFailed(
      temperatureUnits == freezed
          ? _value.temperatureUnits
          : temperatureUnits // ignore: cast_nullable_to_non_nullable
              as TemperatureUnits,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherStateFailed implements _WeatherStateFailed {
  const _$_WeatherStateFailed(
      [this.temperatureUnits = TemperatureUnits.celsius]);

  factory _$_WeatherStateFailed.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherStateFailedFromJson(json);

  @JsonKey(defaultValue: TemperatureUnits.celsius)
  @override
  final TemperatureUnits temperatureUnits;

  @override
  String toString() {
    return 'WeatherState.failed(temperatureUnits: $temperatureUnits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherStateFailed &&
            (identical(other.temperatureUnits, temperatureUnits) ||
                other.temperatureUnits == temperatureUnits));
  }

  @override
  int get hashCode => Object.hash(runtimeType, temperatureUnits);

  @JsonKey(ignore: true)
  @override
  _$WeatherStateFailedCopyWith<_WeatherStateFailed> get copyWith =>
      __$WeatherStateFailedCopyWithImpl<_WeatherStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TemperatureUnits temperatureUnits) initial,
    required TResult Function(TemperatureUnits temperatureUnits) loading,
    required TResult Function(
            TemperatureUnits temperatureUnits, Weather weather)
        loaded,
    required TResult Function(TemperatureUnits temperatureUnits) failed,
  }) {
    return failed(temperatureUnits);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TemperatureUnits temperatureUnits)? initial,
    TResult Function(TemperatureUnits temperatureUnits)? loading,
    TResult Function(TemperatureUnits temperatureUnits, Weather weather)?
        loaded,
    TResult Function(TemperatureUnits temperatureUnits)? failed,
  }) {
    return failed?.call(temperatureUnits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TemperatureUnits temperatureUnits)? initial,
    TResult Function(TemperatureUnits temperatureUnits)? loading,
    TResult Function(TemperatureUnits temperatureUnits, Weather weather)?
        loaded,
    TResult Function(TemperatureUnits temperatureUnits)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(temperatureUnits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateInitial value) initial,
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(WeatherStateLoaded value) loaded,
    required TResult Function(_WeatherStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(WeatherStateLoaded value)? loaded,
    TResult Function(_WeatherStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(WeatherStateLoaded value)? loaded,
    TResult Function(_WeatherStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherStateFailedToJson(this)..['runtimeType'] = 'failed';
  }
}

abstract class _WeatherStateFailed implements WeatherState {
  const factory _WeatherStateFailed([TemperatureUnits temperatureUnits]) =
      _$_WeatherStateFailed;

  factory _WeatherStateFailed.fromJson(Map<String, dynamic> json) =
      _$_WeatherStateFailed.fromJson;

  @override
  TemperatureUnits get temperatureUnits;
  @override
  @JsonKey(ignore: true)
  _$WeatherStateFailedCopyWith<_WeatherStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
