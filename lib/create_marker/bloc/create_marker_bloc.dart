import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'create_marker_event.dart';
part 'create_marker_state.dart';

class CreateMarkerBloc extends Bloc<CreateMarkerEvent, CreateMarkerState> {
  CreateMarkerBloc() : super(CreateMarkerInitial()) {}
}
