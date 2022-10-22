import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:placez/src/features/map/view_model/markers_provider.dart';
import 'package:placez/src/utils/map/map_styles.dart';

class MainMap extends ConsumerStatefulWidget {
  const MainMap({Key? key}) : super(key: key);

  @override
  _MainMapState createState() => _MainMapState();
}

class _MainMapState extends ConsumerState<MainMap> {
  void _retrieveMarkers() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(markersProvider.notifier).retrieveMarkers();
    });
  }

  final Completer<GoogleMapController> _completer = Completer();

  static const CameraPosition _cameraPosition = CameraPosition(
    target: LatLng(39.353161, -8.13946),
    zoom: 14.4746,
  );

  @override
  void initState() {
    super.initState();
    _retrieveMarkers();
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(markersProvider);

    return Scaffold(
      body: provider.when(
        data: ((data) {
          print(data["places"][4]["title"]);
          return GoogleMap(
            initialCameraPosition: _cameraPosition,
            onMapCreated: (GoogleMapController controller) {
              _completer.complete(controller);
              controller.setMapStyle(jsonEncode(mapStyles));
            },
            minMaxZoomPreference: const MinMaxZoomPreference(5, null),
            onTap: (LatLng coords) => {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildCreateMarker()),
            },
          );
        }),
        error: ((error, stackTrace) {
          return Text(
            error.toString(),
          );
        }),
        loading: () {
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}

Widget _buildCreateMarker() {
  return Center(
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: const SizedBox(
        height: 500,
        width: 350,
      ),
    ),
  );
}
