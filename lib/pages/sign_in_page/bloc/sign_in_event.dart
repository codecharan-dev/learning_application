part of 'sign_in_bloc.dart';

// E after properties are represents Event for understanding purpose
abstract class SignInEvent {
 const SignInEvent();
}

class EmailEvent extends SignInEvent {
  final String emailE;

  // constructor
  const EmailEvent({
    required this.emailE,
  });
}

class PasswordEvent extends SignInEvent {
  final String passwordE;

  // constructor
  const PasswordEvent({
    required this.passwordE,
  });
}
