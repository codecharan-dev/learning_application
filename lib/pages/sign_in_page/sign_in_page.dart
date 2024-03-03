import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learning_app/common/values/colors/colors.dart';
import 'package:learning_app/pages/common_widgets.dart';
import 'package:learning_app/pages/sign_in_page/bloc/sign_in_bloc.dart';
import 'package:learning_app/pages/sign_in_page/sign_in_controller.dart';
// import 'package:learning_app/pages/sign_in_page/widget/sign_in_widgets.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return Container(
          color: Colors.white,
          child: SafeArea(
            child: Scaffold(
              appBar: appBarWidget("Log In"),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    reusableGoogleAppleFacebookRow(),
                    Center(
                      child: reusableText(
                        "Or use your Email account to Login",
                        15.sp,
                        FontWeight.w500,
                        Colors.grey.withOpacity(0.6),
                      ),
                    ),
                    Container(
                      //color: Colors.pink,
                      padding: EdgeInsets.only(left: 25.w, right: 25.w),
                      margin: EdgeInsets.only(top: 46.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          reusableText(
                              "Email", 15.sp, FontWeight.normal, Colors.grey),
                          reusableTextFormField("Enter your email address",
                              "assets/icons/user.png", false, (value) {
                            BlocProvider.of<SignInBloc>(context)
                                .add(EmailEvent(emailE: value));
                          }),
                          reusableText(
                            "Password",
                            15.sp,
                            FontWeight.normal,
                            Colors.grey,
                          ),
                          reusableTextFormField(
                              "Enter your Password", "assets/icons/lock.png", true,
                              (value) {
                            BlocProvider.of<SignInBloc>(context)
                                .add(PasswordEvent(passwordE: value));
                          }),
                        ],
                      ),
                    ),
                    forgotPasswordButton(),
                    const SizedBox(height: 90),
                    Center(
                      child: Column(
                        children: [
                          loginAndSignUpButton(AppColors.primaryElement,
                              AppColors.primaryBackground, "Log In", () {
                             print("login button tapped");
                            SignInController(signInControllerContext: context)
                                  .signInLogic("email");
                            },
                          ),
                          const SizedBox(height: 30),
                          loginAndSignUpButton(
                            AppColors.primaryBackground,
                            AppColors.primaryText,
                            "Sign Up",
                            () {
                              Navigator.pushNamedAndRemoveUntil(
                                context,
                                "SignUpPage",
                                (route) => true,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
