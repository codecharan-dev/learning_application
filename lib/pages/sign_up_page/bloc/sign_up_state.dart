part of 'sign_up_bloc.dart';

class SignUpState {
  final String userNameS;
  final String emailS;
  final String passwordS;
  final String confrimPasswordS;


  const SignUpState({
    required this.userNameS,
    required this.emailS,
    required this.passwordS,
    required this.confrimPasswordS,
  });
  

  SignUpState copyWith({
    String? userNameS,
    String? emailS,
    String? passwordS,
    String? confrimPasswordS,
  }) {
    return SignUpState(
      userNameS: userNameS ?? this.userNameS,
      emailS: emailS ?? this.emailS,
      passwordS: passwordS ?? this.passwordS,
      confrimPasswordS: confrimPasswordS ?? this.confrimPasswordS,
    );
  }
}

final class SignUpInitialState extends SignUpState {
  SignUpInitialState({
    required super.userNameS,
    required super.emailS,
    required super.passwordS,
    required super.confrimPasswordS,
  });
}
