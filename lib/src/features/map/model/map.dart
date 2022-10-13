import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'map.freezed.dart';
part 'map.g.dart';

@freezed
class Map with _$Map {
  const factory Map({
    required GoogleMap map,
  }) = _Map;

  factory Map.fromJson(Map<String, dynamic> json) => _$Map(json);
}
