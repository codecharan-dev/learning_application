import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'application_event.dart';
part 'application_state.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  ApplicationBloc() : super(ApplicationInitialState(indexS: 0)) {
    on<ApplicationTriggerEvent>(applicationTriggerEvent);
  }

  FutureOr<void> applicationTriggerEvent(
      ApplicationTriggerEvent event, Emitter<ApplicationState> emit) {
    emit(ApplicationState(indexS: event.indexE));
  }
}
