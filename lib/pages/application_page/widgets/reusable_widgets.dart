import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learning_app/common/values/colors/colors.dart';

BottomNavigationBarItem reusableBotNavBarItems(
      {required String iconpath, required String label}) {
    return BottomNavigationBarItem(
      activeIcon: SizedBox(
        height: 15.h,
        width: 15.w,
        child: Image.asset(
          iconpath,
          color: AppColors.primaryElement,
        ),
      ),
      label: label,
      icon: SizedBox(
        height: 15.h,
        width: 15.w,
        child: Image.asset(iconpath),
      ),
    );
  }
