import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:placez/src/utils/map/map_styles.dart';

class MainMap extends StatefulWidget {
  const MainMap({Key? key}) : super(key: key);

  @override
  _MainMapState createState() => _MainMapState();
}

class _MainMapState extends State<MainMap> {
  final Completer<GoogleMapController> _completer = Completer();

  static const CameraPosition _cameraPosition = CameraPosition(
    target: LatLng(39.353161, -8.13946),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: _cameraPosition,
      onMapCreated: (GoogleMapController controller) {
        _completer.complete(controller);
        controller.setMapStyle(jsonEncode(mapStyles));
      },
      minMaxZoomPreference: const MinMaxZoomPreference(5, null),
      onTap: (LatLng coords) => {
        showDialog(context: context, builder: (BuildContext context) => _buildCreateMarker()),
      },
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
