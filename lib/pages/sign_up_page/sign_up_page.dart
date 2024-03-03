import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learning_app/common/values/colors/colors.dart';
import 'package:learning_app/pages/common_widgets.dart';
import 'package:learning_app/pages/sign_up_page/bloc/sign_up_bloc.dart';
import 'package:learning_app/pages/sign_up_page/sign_up_controller.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return Container(
          color: Colors.white,
          child: SafeArea(
            child: Scaffold(
              appBar: appBarWidget("Sign Up"),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      //color: Colors.pink,
                      margin: const EdgeInsets.only(top: 30),
                      child: Center(
                        child: reusableText(
                          "Enter your details below and sign up for free",
                          14.sp,
                          FontWeight.w500,
                          Colors.grey.withOpacity(0.6),
                        ),
                      ),
                    ),
                    Container(
                      //color: Colors.pink,
                      padding: EdgeInsets.only(left: 25.w, right: 25.w),
                      margin: EdgeInsets.only(top: 36.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          reusableText(
                            "User Name",
                            15.sp,
                            FontWeight.normal,
                            Colors.grey,
                          ),
                          reusableTextFormField("Enter your user name",
                              "assets/icons/user.png", false, (value) {
                            BlocProvider.of<SignUpBloc>(context)
                                .add(UserNameEvent(userNameE: value));
                          }),
                          reusableText(
                            "Email",
                            15.sp,
                            FontWeight.normal,
                            Colors.grey,
                          ),
                          reusableTextFormField("Enter your email address",
                              "assets/icons/user.png", false, (value) {
                            BlocProvider.of<SignUpBloc>(context)
                                .add(EmailEvent(emailE: value));
                          }),
                          reusableText(
                            "Password",
                            15.sp,
                            FontWeight.normal,
                            Colors.grey,
                          ),
                          reusableTextFormField(
                            "Enter your Password",
                            "assets/icons/lock.png",
                            true,
                            (value) {
                              BlocProvider.of<SignUpBloc>(context)
                                  .add(PasswordEvent(passwordE: value));
                            },
                          ),
                          reusableText("Confrim Password", 15.sp, FontWeight.normal,
                              Colors.grey),
                          reusableTextFormField("Re-Enter your password",
                              "assets/icons/lock.png", true, (value) {
                            BlocProvider.of<SignUpBloc>(context)
                                .add(ConfrimPasswordEvent(confrimPasswordE: value));
                          }),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25, right: 25.w),
                      //color: Colors.pink,
                      //height: 21.h,
                      //width: 50.w,
                      child: reusableText(
                        "By creating an account you have to agree with our terms and conditions",
                        12.sp,
                        FontWeight.normal,
                        Colors.grey.withOpacity(0.6),
                      ),
                    ),
                    const SizedBox(height: 90),
                    Center(
                      child: Column(
                        children: [
                          loginAndSignUpButton(
                            AppColors.primaryElement,
                            AppColors.primaryBackground,
                            "Sign Up",
                            () {
                              SignUpController(context: context).signUpLogic();
                             
                              //print("button tapped");
                              
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
