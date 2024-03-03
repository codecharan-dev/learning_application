import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc()
      : super(SignUpInitialState(
          userNameS: "",
          emailS: "",
          passwordS: "",
          confrimPasswordS: "",
        )) {
    on<UserNameEvent>(userNameEvent);
    on<EmailEvent>(emailEvent);
    on<PasswordEvent>(passwordEvent);
    on<ConfrimPasswordEvent>(confrimPasswordEvent);
  }

  FutureOr<void> userNameEvent(UserNameEvent event, Emitter<SignUpState> emit) {
   // print(event.userNameE);
    emit(
      state.copyWith(userNameS: event.userNameE),
    );
  }

  FutureOr<void> emailEvent(EmailEvent event, Emitter<SignUpState> emit) {
   // print(event.emailE);
    emit(
      state.copyWith(emailS: event.emailE),
    );
  }

  FutureOr<void> passwordEvent(PasswordEvent event, Emitter<SignUpState> emit) {
   // print(event.passwordE);
    emit(
      state.copyWith(passwordS: event.passwordE),
    );
  }

  FutureOr<void> confrimPasswordEvent(
      ConfrimPasswordEvent event, Emitter<SignUpState> emit) {
   // print(event.confrimPasswordE);
    emit(
      state.copyWith(confrimPasswordS: event.confrimPasswordE),
    );
  }
}
