part of 'sign_in_bloc.dart';

class SignInState {
  // S after properties are represents State for understanding purpose
  final String emailS;
  final String passwordS;

  // constructor
  SignInState({
    required this.emailS,
    required this.passwordS,
  });
  // Copy With Function
  SignInState copyWith({
    String? emailS,
    String? passwordS,
  }) {
    return SignInState(
      emailS: emailS ?? this.emailS,
      passwordS: passwordS ?? this.passwordS,
    );
  }
}

class SignInInitialState extends SignInState {
  SignInInitialState({required super.emailS, required super.passwordS});
}
