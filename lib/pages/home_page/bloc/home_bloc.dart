import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitialState(index: 0)) {
    on<HomeDotsEvent>(homeDotsEvent);
  }

  FutureOr<void> homeDotsEvent(HomeDotsEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(index: event.index));
  }
}
