// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Map _$MapFromJson(Map<String, dynamic> json) {
  return _Map.fromJson(json);
}

/// @nodoc
mixin _$Map {
  StatefulWidget get map => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapCopyWith<Map> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapCopyWith<$Res> {
  factory $MapCopyWith(Map value, $Res Function(Map) then) =
      _$MapCopyWithImpl<$Res>;
  $Res call({StatefulWidget map});
}

/// @nodoc
class _$MapCopyWithImpl<$Res> implements $MapCopyWith<$Res> {
  _$MapCopyWithImpl(this._value, this._then);

  final Map _value;
  // ignore: unused_field
  final $Res Function(Map) _then;

  @override
  $Res call({
    Object? map = freezed,
  }) {
    return _then(_value.copyWith(
      map: map == freezed
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as StatefulWidget,
    ));
  }
}

/// @nodoc
abstract class _$$_MapCopyWith<$Res> implements $MapCopyWith<$Res> {
  factory _$$_MapCopyWith(_$_Map value, $Res Function(_$_Map) then) =
      __$$_MapCopyWithImpl<$Res>;
  @override
  $Res call({StatefulWidget map});
}

/// @nodoc
class __$$_MapCopyWithImpl<$Res> extends _$MapCopyWithImpl<$Res>
    implements _$$_MapCopyWith<$Res> {
  __$$_MapCopyWithImpl(_$_Map _value, $Res Function(_$_Map) _then)
      : super(_value, (v) => _then(v as _$_Map));

  @override
  _$_Map get _value => super._value as _$_Map;

  @override
  $Res call({
    Object? map = freezed,
  }) {
    return _then(_$_Map(
      map: map == freezed
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as StatefulWidget,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Map implements _Map {
  const _$_Map({required this.map});

  factory _$_Map.fromJson(Map<String, dynamic> json) => _$$_MapFromJson(json);

  @override
  final StatefulWidget map;

  @override
  String toString() {
    return 'Map(map: $map)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Map &&
            const DeepCollectionEquality().equals(other.map, map));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(map));

  @JsonKey(ignore: true)
  @override
  _$$_MapCopyWith<_$_Map> get copyWith =>
      __$$_MapCopyWithImpl<_$_Map>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MapToJson(
      this,
    );
  }
}

abstract class _Map implements Map {
  const factory _Map({required final StatefulWidget map}) = _$_Map;

  factory _Map.fromJson(Map<String, dynamic> json) = _$_Map.fromJson;

  @override
  StatefulWidget get map;
  @override
  @JsonKey(ignore: true)
  _$$_MapCopyWith<_$_Map> get copyWith => throw _privateConstructorUsedError;
}
