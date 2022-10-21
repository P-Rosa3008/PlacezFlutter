// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'marker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Marker _$MarkerFromJson(Map<String, dynamic> json) {
  return _Marker.fromJson(json);
}

/// @nodoc
mixin _$Marker {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  String get markerName => throw _privateConstructorUsedError;
  List<String> get markerPhotos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarkerCopyWith<Marker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkerCopyWith<$Res> {
  factory $MarkerCopyWith(Marker value, $Res Function(Marker) then) =
      _$MarkerCopyWithImpl<$Res, Marker>;
  @useResult
  $Res call(
      {double lat, double lng, String markerName, List<String> markerPhotos});
}

/// @nodoc
class _$MarkerCopyWithImpl<$Res, $Val extends Marker>
    implements $MarkerCopyWith<$Res> {
  _$MarkerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? markerName = null,
    Object? markerPhotos = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      markerName: null == markerName
          ? _value.markerName
          : markerName // ignore: cast_nullable_to_non_nullable
              as String,
      markerPhotos: null == markerPhotos
          ? _value.markerPhotos
          : markerPhotos // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MarkerCopyWith<$Res> implements $MarkerCopyWith<$Res> {
  factory _$$_MarkerCopyWith(_$_Marker value, $Res Function(_$_Marker) then) =
      __$$_MarkerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double lat, double lng, String markerName, List<String> markerPhotos});
}

/// @nodoc
class __$$_MarkerCopyWithImpl<$Res>
    extends _$MarkerCopyWithImpl<$Res, _$_Marker>
    implements _$$_MarkerCopyWith<$Res> {
  __$$_MarkerCopyWithImpl(_$_Marker _value, $Res Function(_$_Marker) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? markerName = null,
    Object? markerPhotos = null,
  }) {
    return _then(_$_Marker(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      markerName: null == markerName
          ? _value.markerName
          : markerName // ignore: cast_nullable_to_non_nullable
              as String,
      markerPhotos: null == markerPhotos
          ? _value._markerPhotos
          : markerPhotos // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Marker implements _Marker {
  const _$_Marker(
      {required this.lat,
      required this.lng,
      required this.markerName,
      final List<String> markerPhotos = const []})
      : _markerPhotos = markerPhotos;

  factory _$_Marker.fromJson(Map<String, dynamic> json) =>
      _$$_MarkerFromJson(json);

  @override
  final double lat;
  @override
  final double lng;
  @override
  final String markerName;
  final List<String> _markerPhotos;
  @override
  @JsonKey()
  List<String> get markerPhotos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markerPhotos);
  }

  @override
  String toString() {
    return 'Marker(lat: $lat, lng: $lng, markerName: $markerName, markerPhotos: $markerPhotos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Marker &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.markerName, markerName) ||
                other.markerName == markerName) &&
            const DeepCollectionEquality()
                .equals(other._markerPhotos, _markerPhotos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng, markerName,
      const DeepCollectionEquality().hash(_markerPhotos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarkerCopyWith<_$_Marker> get copyWith =>
      __$$_MarkerCopyWithImpl<_$_Marker>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarkerToJson(
      this,
    );
  }
}

abstract class _Marker implements Marker {
  const factory _Marker(
      {required final double lat,
      required final double lng,
      required final String markerName,
      final List<String> markerPhotos}) = _$_Marker;

  factory _Marker.fromJson(Map<String, dynamic> json) = _$_Marker.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  String get markerName;
  @override
  List<String> get markerPhotos;
  @override
  @JsonKey(ignore: true)
  _$$_MarkerCopyWith<_$_Marker> get copyWith =>
      throw _privateConstructorUsedError;
}
