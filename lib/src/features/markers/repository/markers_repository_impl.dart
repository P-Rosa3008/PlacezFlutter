import 'package:dio/dio.dart';
import 'package:placez/src/features/markers/model/marker.dart';
import 'package:placez/src/utils/http_util.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod/riverpod.dart';

import 'markers_repository.dart';

part 'markers_repository_impl.g.dart';

final markersRepository = Provider(
  (ref) => MarkersRepositoryImpl(
    ref.watch(dioProvider),
  ),
);

@RestApi()
abstract class MarkersRepositoryImpl implements MarkersRepository {
  factory MarkersRepositoryImpl(Dio dio) = _MarkersRepositoryImpl;

  @GET('/api/places/markers')
  @override
  Future<List<Marker>> retriveMarkers();
}
