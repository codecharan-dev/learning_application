import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app/common/widgets/flutter_toast.dart';
import 'package:learning_app/pages/application_page/bloc/application_bloc.dart';
import 'package:learning_app/pages/home_page/bloc/home_bloc.dart';
import 'package:learning_app/pages/sign_in_page/bloc/sign_in_bloc.dart';

class SignInController {
  final BuildContext signInControllerContext;
  SignInController({
    required this.signInControllerContext,
  });

  Future<void> signInLogic(String inputType) async {
    try {
      if (inputType == "email") {
        final state =
            BlocProvider.of<SignInBloc>(signInControllerContext).state;
        String emailAddress = state.emailS;
        String password = state.passwordS;

        if (emailAddress.isEmpty) {
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

        final credential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress,
          password: password,
        );

        if (!credential.user!.emailVerified) {
          reusableFlutterToast(
            msg: "You need to verify your email",
            bgColor: Colors.green,
            textColor: Colors.white,
          );
          return;
        }

        if (signInControllerContext.mounted) {
          BlocProvider.of<HomeBloc>(signInControllerContext)
              .add(HomeDotsEvent(index: 0));
          BlocProvider.of<ApplicationBloc>(signInControllerContext)
              .add(ApplicationTriggerEvent(indexE: 0));
          Navigator.pushNamedAndRemoveUntil(
            signInControllerContext,
            "ApplicationPage",
            (route) => false,
          );
        }
      }
    } on FirebaseAuthException catch (e) {
      handleFirebaseAuthException(e);
    } catch (e) {
      //print(e); // Handle other exceptions
    }
  }

  void handleFirebaseAuthException(FirebaseAuthException e) {
    switch (e.code) {
      case 'user-not-found':
        reusableFlutterToast(
          msg: "No user found for that email",
          bgColor: Colors.red,
          textColor: Colors.white,
        );
        break;

      case 'wrong-password':
        reusableFlutterToast(
          msg: "Wrong password provided for that user",
          bgColor: Colors.red,
          textColor: Colors.white,
        );
        break;

      case 'invalid-email':
        reusableFlutterToast(
          msg: "Your email format is wrong",
          bgColor: Colors.red,
          textColor: Colors.white,
        );
        break;

      default:
        reusableFlutterToast(
          msg: "An error occurred: ${e.message ?? ''}",
          bgColor: Colors.red,
          textColor: Colors.white,
        );
    }
  }
}
