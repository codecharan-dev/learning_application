import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:io';
import 'package:learning_app/common/values/colors/colors.dart';

AppBar appBarWidget(String title) {
  return AppBar(
    centerTitle: true,
    bottom: PreferredSize(
      preferredSize: const Size(0, 1),
      child: Container(
        color: AppColors.primarySecondaryBackground,
        // height defines the thickness of the line under the app bar
        height: 1.h,
      ),
    ),
    title: Text(
      title,
    ),
  );
}

Widget reusableGoogleAppleFacebookRow() {
  return Container(
    //color: Colors.pink,
    margin: EdgeInsets.only(top: 40.h, bottom: 15.h, left: 65.w, right: 65.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        reusableGoogleAppleFacebookIcons("assets/icons/google.png"),
        reusableGoogleAppleFacebookIcons("assets/icons/apple.png"),
        reusableGoogleAppleFacebookIcons("assets/icons/facebook.png"),
      ],
    ),
  );
}

Widget reusableGoogleAppleFacebookIcons(String iconPath) {
  return InkWell(
    borderRadius: BorderRadius.all(
      Radius.circular(
        25.w,
      ),
    ),
    onTap: () {},
    child: SizedBox(
      height: 40.w,
      width: 40.w,
      child: Image.asset(iconPath),
    ),
  );
}

Widget reusableText(
    String text, double fontZize, FontWeight fontWeight, Color color) {
  return Container(
    margin: EdgeInsets.only(bottom: 5.h),
    child: Text(
      text,
      style: TextStyle(
        fontSize: fontZize,
        fontWeight: fontWeight,
        color: color,
      ),
    ),
  );
}

Widget reusableTextFormField(
  String hintText,
  String iconName,
  bool obscureFortext,
  void Function(String value)? signInAndSignUpFunc,
) {
  return Container(
    width: 325.w,
    height: 45.h,
    margin: EdgeInsets.only(bottom: 15.h),
    decoration: BoxDecoration(
      // color: Colors.green,
      borderRadius: BorderRadius.all(
        Radius.circular(15.w),
      ),
      border: Border.all(color: AppColors.primaryFourElementText),
    ),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10.w),
          //color: Colors.pink,
          width: 25.w,
          height: 20.h,
          child: Image(
            image: AssetImage(iconName),
          ),
        ),
        Container(
          margin: (Platform.isIOS)
              ? EdgeInsets.only(left: 5.w)
              : EdgeInsets.only(left: 5.w, top: 10.w),

          //color: Colors.pink,
          width: 268.w,
          height: 50.h,
          child: TextFormField(
            onChanged: (value) => signInAndSignUpFunc!(value),
            obscureText: obscureFortext,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(
                color: AppColors.primarySecondaryElementText,
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget forgotPasswordButton() {
  return Container(
    // color: Colors.pink,
    width: 125.w,
    height: 30.h,
    margin: EdgeInsets.only(left: 18.w),
    child: TextButton(
      style: TextButton.styleFrom(),
      onPressed: () {},
      child: const Text(
        "Forgot Password?",
        style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
        ),
      ),
    ),
  );
}

Widget loginAndSignUpButton(Color color, Color buttonTextColor,
    String buttonText, void Function()? loginAndSignupfunc) {
  
  return SizedBox(
    height: 45.h,
    width: 300.w,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      onPressed: loginAndSignupfunc,
      child: Text(
        buttonText,
        style: TextStyle(
          color: buttonTextColor,
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
