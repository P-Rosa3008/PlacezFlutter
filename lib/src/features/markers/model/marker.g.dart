// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Marker _$$_MarkerFromJson(Map<String, dynamic> json) => _$_Marker(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      markerName: json['markerName'] as String,
      markerPhotos: (json['markerPhotos'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MarkerToJson(_$_Marker instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'markerName': instance.markerName,
      'markerPhotos': instance.markerPhotos,
    };
