import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'src/utils/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(
      ProviderScope(
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps Demo',
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _completer = Completer();

  static const CameraPosition _cameraPosition = CameraPosition(
    target: LatLng(39.353161, -8.13946),
    zoom: 14.4746,
  );
  @override
  void initState() {
    super.initState();
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      toolbarHeight: 65,
      backgroundColor: const Color(0xFF203361),
      title: const Text(
        "Placez",
        style: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _buildContentSuccess(Completer<GoogleMapController> completer,
      CameraPosition cameraPosition, WidgetRef ref) {
    return GoogleMap(
      initialCameraPosition: cameraPosition,
      onMapCreated: (GoogleMapController controller) {
        completer.complete(controller);
        controller.setMapStyle(jsonEncode(mapStyles));
      },
      minMaxZoomPreference: const MinMaxZoomPreference(5, null),
      onTap: (LatLng coords) => {
        showDialog(
            context: context,
            builder: (BuildContext context) => _buildCreateMarker()),
      },
    );
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

  Widget _buildDefaultScreen() {
    return const Scaffold(
      body: Center(
        child: Text("DEFAULT"),
      ),
    );
  }

  Widget _buildLoadingScreen() {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) =>
          _buildContentSuccess(_completer, _cameraPosition, ref),
    );
  }
}
