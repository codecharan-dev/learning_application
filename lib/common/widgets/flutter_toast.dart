import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

reusableFlutterToast({
required String msg, 
required Color bgColor, 
required Color textColor,

}) {
  return Fluttertoast.showToast(
    msg: msg,
    backgroundColor: bgColor,
    fontSize: 15.sp,
    gravity: ToastGravity.TOP,
    textColor: textColor,
    timeInSecForIosWeb: 3,
    toastLength: Toast.LENGTH_LONG,
  );
}
