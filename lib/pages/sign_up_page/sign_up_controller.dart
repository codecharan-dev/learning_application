
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app/common/widgets/flutter_toast.dart';
import 'package:learning_app/pages/sign_up_page/bloc/sign_up_bloc.dart';

class SignUpController {
  final BuildContext context;
  SignUpController({
    required this.context,
  });

  Future<void> signUpLogic() async {
    String username =
        BlocProvider.of<SignUpBloc>(context).state.userNameS;
    String email =
        BlocProvider.of<SignUpBloc>(context).state.emailS;
    String password =
        BlocProvider.of<SignUpBloc>(context).state.passwordS;
    String confrimPassword =
        BlocProvider.of<SignUpBloc>(context)
            .state
            .confrimPasswordS;

    if (username.isEmpty) {
      reusableFlutterToast(
        msg: "User Name cannot be empty",
        bgColor: Colors.red,
        textColor: Colors.white,
      );
      return;
    }
    if (email.isEmpty) {
      reusableFlutterToast(
        msg: "Email address cannot be empty",
        bgColor: Colors.red,
        textColor: Colors.white,
      );
      return;
    }
    if (password.isEmpty) {
      reusableFlutterToast(
        msg: "Password cannot be empty",
        bgColor: Colors.red,
        textColor: Colors.white,
      );
      return;
    }
    if (confrimPassword.isEmpty) {
      reusableFlutterToast(
        msg: "your password confrimation is wrong",
        bgColor: Colors.red,
        textColor: Colors.white,
      );
      return;
    }
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (credential.user != null) {
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(username);
        reusableFlutterToast(
          msg:
              "An email has been sent to the registered email. To activate it please check your email and click the link.",
          bgColor: Colors.green,
          textColor: Colors.white,
        );
        
        // If this warning occurs [ Don't use 'BuildContext's across async gaps.Try rewriting the code to not reference the 'BuildContext'] use this line( if (!context.mounted) return; ) before that .
        if (!context.mounted) return;
        Navigator.pop(context);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        reusableFlutterToast(
          msg: "your password is too weak",
          bgColor: Colors.red,
          textColor: Colors.white,
        );
         return;
      } else if (e.code == 'email-already-in-use') {
        reusableFlutterToast(
          msg: "your email address is already in use",
          bgColor: Colors.red,
          textColor: Colors.white,
        );
         return;
      } else if (e.code == 'inavlid-email') {
        reusableFlutterToast(
          msg: "your email address is not valid one",
          bgColor: Colors.red,
          textColor: Colors.white,
        );
         return;
      }
    }
  }
}
