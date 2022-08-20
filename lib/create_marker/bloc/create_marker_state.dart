part of 'create_marker_bloc.dart';

abstract class CreateMarkerState extends Equatable {
  const CreateMarkerState();

  @override
  List<Object> get props => [];
}

class CreateMarkerInitial extends CreateMarkerState {}

class CreateMarkerFormValid extends CreateMarkerState {}

class CreateMarkerFormNotValid extends CreateMarkerState {}
