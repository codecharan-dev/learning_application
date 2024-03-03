import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar settingsAppBar() {
  return AppBar(
    title: const Text(
      'Settings',
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget reusableTextButton(
  BuildContext context,
  void Function()? func, {
  required String text,
}) {
  return TextButton(
    onPressed: func,
    child: Text(text),
  );
}

GestureDetector logOutButton(BuildContext context) {
  return GestureDetector(
    onTap: () {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Confrim Log Out"),
            content: const Text("Confrim Log Out"),
            actions: [
              reusableTextButton(
                text: "Cancel",
                context,
                () {
                  Navigator.of(context).pop();
                },
              ),
              reusableTextButton(
                text: "Confrim",
                context,
                () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    "SignInPage",
                    (route) => false,
                  );
                },
              )
            ],
          );
        },
      );
    },
    child: Container(
      margin: EdgeInsets.only(top: 490.h),
      height: 80.h,
      //width: 400.w,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/icons/Logout.png"),
        ),
        //color: Colors.yellow,
      ),
    ),
  );
}
