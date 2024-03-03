part of 'sign_up_bloc.dart';

abstract class SignUpEvent {
 const SignUpEvent();
}

class UserNameEvent extends SignUpEvent {
  final String userNameE;
  const UserNameEvent({
    required this.userNameE,
  });
}

class EmailEvent extends SignUpEvent {
  final String emailE;
  const EmailEvent({
    required this.emailE,
  });
}

class PasswordEvent extends SignUpEvent {
  final String passwordE;
  const PasswordEvent({
    required this.passwordE,
  });
}

class ConfrimPasswordEvent extends SignUpEvent {
  final String confrimPasswordE;
  const ConfrimPasswordEvent({
    required this.confrimPasswordE,
  });
}
