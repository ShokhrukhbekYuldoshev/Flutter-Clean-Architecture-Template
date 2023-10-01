import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'feature_a_event.dart';
part 'feature_a_state.dart';

class FeatureABloc extends Bloc<FeatureAEvent, FeatureAState> {
  FeatureABloc() : super(FeatureAInitial()) {
    on<FeatureAEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
