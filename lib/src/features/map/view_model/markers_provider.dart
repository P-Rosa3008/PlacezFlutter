import 'package:placez/src/features/markers/model/marker.dart';
import 'package:placez/src/features/markers/repository/markers_repository.dart';
import 'package:placez/src/features/markers/repository/markers_repository_impl.dart';
import 'package:riverpod/riverpod.dart';

final markersProvider =
    StateNotifierProvider<MarkersProviders, AsyncValue<List<Marker>>>(
  (ref) => MarkersProviders(ref.watch(markersRepository)),
);

class MarkersProviders extends StateNotifier<AsyncValue<List<Marker>>> {
  final MarkersRepository _markersRepository;

  MarkersProviders(this._markersRepository)
      : super(AsyncValue.data([Marker.initialState()]));

  Future<void> retrieveMarkers() async {
    try {
      state = const AsyncLoading();
      final markers = await _markersRepository.retriveMarkers();
      state = AsyncValue.data(markers);
    } catch (exception, stackTrace) {
      state = AsyncValue.error(exception, stackTrace: stackTrace);
    }
  }
}
