part of 'create_marker_bloc.dart';

abstract class CreateMarkerEvent extends Equatable {
  const CreateMarkerEvent();

  @override
  List<Object> get props => [];
}

class SubmitCreateMarkerForm extends CreateMarkerEvent {}
