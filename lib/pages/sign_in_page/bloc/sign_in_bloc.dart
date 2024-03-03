import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

// S after properties are represents State & E after properties are represents Event for understanding purpose
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitialState(emailS: "", passwordS: "")) {
    on<EmailEvent>(emailEvent);
    on<PasswordEvent>(passwordEvent);
  }

  FutureOr<void> emailEvent(EmailEvent event, Emitter<SignInState> emit) {
    print("my email is ${event.emailE}");
    emit(state.copyWith(emailS: event.emailE));
  }

  FutureOr<void> passwordEvent(PasswordEvent event, Emitter<SignInState> emit) {
    print("my password is ${event.passwordE}");
    emit(state.copyWith(passwordS: event.passwordE));
  }
}
