import 'package:freezed_annotation/freezed_annotation.dart';

part 'marker.freezed.dart';
part 'marker.g.dart';

@freezed
class Marker with _$Marker {
  const factory Marker({
    required double lat,
    required double lng,
    required String markerName,
    @Default([]) List<String> markerPhotos,
  }) = _Marker;

  factory Marker.fromJson(Map<String, dynamic> json) => _$MarkerFromJson(json);

  factory Marker.initialState() =>
      const Marker(lat: 0.0, lng: 0.0, markerName: '');
}
