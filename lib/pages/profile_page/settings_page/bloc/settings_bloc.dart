import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsInitialState()) {
    on<TriggerSettings>(triggerSettings);
  }

  FutureOr<void> triggerSettings(
      SettingsEvent event, Emitter<SettingsState> emit) {
    emit(SettingsState());
  }
}
