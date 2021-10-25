// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
class _$LocationTearOff {
  const _$LocationTearOff();

  _Location call(
      {required String title,
      required LocationType locationType,
      @JsonKey(name: 'latt_long') @LatLngConverter() required LatLng latLng,
      required int woeid}) {
    return _Location(
      title: title,
      locationType: locationType,
      latLng: latLng,
      woeid: woeid,
    );
  }

  Location fromJson(Map<String, Object?> json) {
    return Location.fromJson(json);
  }
}

/// @nodoc
const $Location = _$LocationTearOff();

/// @nodoc
mixin _$Location {
  String get title => throw _privateConstructorUsedError;
  LocationType get locationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'latt_long')
  @LatLngConverter()
  LatLng get latLng => throw _privateConstructorUsedError;

  ///(where-on-earth-id) dictionary to hit the location endpoint.
  int get woeid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res>;
  $Res call(
      {String title,
      LocationType locationType,
      @JsonKey(name: 'latt_long') @LatLngConverter() LatLng latLng,
      int woeid});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  final Location _value;
  // ignore: unused_field
  final $Res Function(Location) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? locationType = freezed,
    Object? latLng = freezed,
    Object? woeid = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      locationType: locationType == freezed
          ? _value.locationType
          : locationType // ignore: cast_nullable_to_non_nullable
              as LocationType,
      latLng: latLng == freezed
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
      woeid: woeid == freezed
          ? _value.woeid
          : woeid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) then) =
      __$LocationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      LocationType locationType,
      @JsonKey(name: 'latt_long') @LatLngConverter() LatLng latLng,
      int woeid});
}

/// @nodoc
class __$LocationCopyWithImpl<$Res> extends _$LocationCopyWithImpl<$Res>
    implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(_Location _value, $Res Function(_Location) _then)
      : super(_value, (v) => _then(v as _Location));

  @override
  _Location get _value => super._value as _Location;

  @override
  $Res call({
    Object? title = freezed,
    Object? locationType = freezed,
    Object? latLng = freezed,
    Object? woeid = freezed,
  }) {
    return _then(_Location(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      locationType: locationType == freezed
          ? _value.locationType
          : locationType // ignore: cast_nullable_to_non_nullable
              as LocationType,
      latLng: latLng == freezed
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
      woeid: woeid == freezed
          ? _value.woeid
          : woeid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Location implements _Location {
  const _$_Location(
      {required this.title,
      required this.locationType,
      @JsonKey(name: 'latt_long') @LatLngConverter() required this.latLng,
      required this.woeid});

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

  @override
  final String title;
  @override
  final LocationType locationType;
  @override
  @JsonKey(name: 'latt_long')
  @LatLngConverter()
  final LatLng latLng;
  @override

  ///(where-on-earth-id) dictionary to hit the location endpoint.
  final int woeid;

  @override
  String toString() {
    return 'Location(title: $title, locationType: $locationType, latLng: $latLng, woeid: $woeid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Location &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.locationType, locationType) ||
                other.locationType == locationType) &&
            (identical(other.latLng, latLng) || other.latLng == latLng) &&
            (identical(other.woeid, woeid) || other.woeid == woeid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, locationType, latLng, woeid);

  @JsonKey(ignore: true)
  @override
  _$LocationCopyWith<_Location> get copyWith =>
      __$LocationCopyWithImpl<_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(this);
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {required String title,
      required LocationType locationType,
      @JsonKey(name: 'latt_long') @LatLngConverter() required LatLng latLng,
      required int woeid}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  String get title;
  @override
  LocationType get locationType;
  @override
  @JsonKey(name: 'latt_long')
  @LatLngConverter()
  LatLng get latLng;
  @override

  ///(where-on-earth-id) dictionary to hit the location endpoint.
  int get woeid;
  @override
  @JsonKey(ignore: true)
  _$LocationCopyWith<_Location> get copyWith =>
      throw _privateConstructorUsedError;
}
