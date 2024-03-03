import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'welcome_event.dart';
part 'welcome_state.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() : super(WelcomeInitialState(page: 0)) {
       // print("welcome bloc");

    on<WelcomeEvent>(welcomeEvent);
  }

  FutureOr<void> welcomeEvent(WelcomeEvent event, Emitter<WelcomeState> emit) {
    emit(
      WelcomeState(
        page: state.page,
      ),
    );
  }
}
