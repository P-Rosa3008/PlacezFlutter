part of 'map_bloc.dart';

abstract class MapState extends Equatable {
  const MapState();

  @override
  List<Object> get props => [];
}

class MapLoading extends MapState {}

class MapLoaded extends MapState {}

class MapLoadingFailed extends MapState {}
