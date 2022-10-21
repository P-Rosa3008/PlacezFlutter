import '../model/marker.dart';

abstract class MarkersRepository {
  Future<List<Marker>> retriveMarkers();
}
