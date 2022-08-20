import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/src/bloc_listener.dart';
import 'package:provider/src/provider.dart';
import 'package:flutter_bloc/src/bloc_provider.dart';
import 'package:flutter_bloc/src/multi_bloc_provider.dart';
import 'package:flutter_bloc/src/bloc_builder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import './map/bloc/map_bloc.dart';
import 'create_marker/bloc/create_marker_bloc.dart';
import './map/utils/utils.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps Demo',
      home: BlocProvider(
        create: (context) => MapBloc(),
        child: MapSample(),
      ),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final MapBloc _mapBloc = MapBloc();
  final CreateMarkerBloc _createMarkerBloc = CreateMarkerBloc();

  Completer<GoogleMapController> _completer = Completer();

  static final CameraPosition cameraPosition = CameraPosition(
    target: LatLng(39.353161, -8.13946),
    zoom: 14.4746,
  );

  @override
  void initState() {
    super.initState();
    _mapBloc.add(LoadMapEvent());
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      toolbarHeight: 65,
      backgroundColor: Color(0xFF203361),
      title: Text(
        "Placez",
        style: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _buildMap(Completer<GoogleMapController> completer, CameraPosition cameraPosition) {
    return GoogleMap(
      initialCameraPosition: cameraPosition,
      onMapCreated: (GoogleMapController controller) {
        completer.complete(controller);
        controller.setMapStyle(jsonEncode(mapStyles));
      },
      minMaxZoomPreference: MinMaxZoomPreference(5, null),
      onTap: (LatLng coords) => {
        print(coords),
        showDialog(context: context, builder: (BuildContext context) => _buildCreateMarker()),
      },
    );
  }

  Widget _buildCreateMarker() {
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          height: 500,
          width: 350,
        ),
      ),
    );
  }

  Widget _buildContentSuccess() {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildMap(_completer, cameraPosition),
    );
  }

  Widget _buildDefaultScreen() {
    return Scaffold(
      body: Center(
        child: Text("DEFAULT"),
      ),
    );
  }

  Widget _buildLoadingScreen() {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _mapBloc,
      builder: (context, state) {
        switch (state.runtimeType) {
          case MapLoaded:
            return _buildContentSuccess();
          case MapLoading:
            return _buildLoadingScreen();
          default:
            return _buildDefaultScreen();
        }
      },
    );
  }
}
