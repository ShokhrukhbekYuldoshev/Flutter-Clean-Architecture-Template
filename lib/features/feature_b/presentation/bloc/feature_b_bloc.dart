import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'feature_b_event.dart';
part 'feature_b_state.dart';

class FeatureBBloc extends Bloc<FeatureBEvent, FeatureBState> {
  FeatureBBloc() : super(FeatureBInitial()) {
    on<FeatureBEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
