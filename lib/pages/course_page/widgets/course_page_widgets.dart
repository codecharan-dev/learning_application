import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learning_app/common/values/colors/colors.dart';

AppBar courseAppBar() {
  return AppBar(
    title: const Text(
      'Course Details',
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget courseReusableText(
    {required String text,
    required double fontSize,
    required FontWeight fontWeight,
    required Color color}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ),
  );
}

Widget thumbNail() {
  return Container(
    height: 150.h,
    width: 370.w,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(35)),
      color: Colors.yellow,
      image: DecorationImage(
        image: AssetImage(
          "assets/icons/image_1.png",
        ),
        fit: BoxFit.fill,
      ),
    ),
  );
}

Widget menuView() {
  return Container(
    margin: EdgeInsets.only(top: 19.h),
    //height: 30.h,
    width: 375.w,
    //color: Colors.pink,
    child: Row(
      children: [
        GestureDetector(
          onTap: () {
            //print(" tapped");
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
            decoration: const BoxDecoration(
              color: AppColors.primaryElement,
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
            ),
            child: Text(
              "Author Page",
              style: TextStyle(
                color: AppColors.primaryElementText,
                fontSize: 11.sp,
              ),
            ),
          ),
        ),
        iconAndNum("assets/icons/people.png", 0),
        iconAndNum("assets/icons/star.png", 0),
      ],
    ),
  );
}

Widget iconAndNum(String imagePath, int num) {
  return Container(
    //color: Colors.pink,
    margin: EdgeInsets.only(left: 30.w),
    child: Row(
      children: [
        Image.asset(
          imagePath,
          width: 20.w,
          height: 20.h,
        ),
        SizedBox(width: 5.w),
        Text(
          num.toString(),
          style: TextStyle(
            fontSize: 11.sp,
            color: AppColors.primaryThreeElementText,
          ),
        ),
      ],
    ),
  );
}

Widget goBuyButton() {
  return InkWell(
    onTap: () {
      print("clicked");
    },
    child: Container(
      margin: EdgeInsets.only(left: 1.w, right: 1.w),
      decoration: const BoxDecoration(
        color: AppColors.primaryElement,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      height: 43.h,
      width: 375.w,
      child: Center(
        child: courseReusableText(
          text: "Go Buy",
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryBackground,
        ),
      ),
    ),
  );
}

Map<String, String> iconsAndNames = {
  "assets/icons/video_detail.png": "36 hours video",
  "assets/icons/file_detail.png": "Total lessons 30",
  "assets/icons/download_detail.png": "67 downloaded resourses"
};
Widget underCourseInclude() {
  return Column(
    children: [
      ...List.generate(iconsAndNames.length, (index) {
        return Container(
          margin: EdgeInsets.only(top: 20.h),
          child: GestureDetector(
            onTap: () {
              // print("tapped");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: AppColors.primaryElement,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 35.h,
                  width: 38.w,
                  child: Image.asset(
                    iconsAndNames.keys.elementAt(index),
                    //color: Colors.white,
                    //width: 18.w,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  height: 40.h,
                  width: 265.w,
                  //color: Colors.pink,
                  child: courseReusableText(
                    text: iconsAndNames.values.elementAt(index),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primarySecondaryElementText,
                  ),
                ),
              ],
            ),
          ),
        );
      })
    ],
  );
}

Widget listOfLessons() {
  return Container(
    margin: EdgeInsets.only(top: 20.h, right: 9.w),
    height: 60.h,
    width: 385.w,
    decoration: BoxDecoration(
      //color: Colors.pink,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          blurRadius: 4,
          blurStyle: BlurStyle.outer,
          color: Colors.grey.withOpacity(0.4),
          offset: const Offset(0, 1),
          spreadRadius: 3,
        ),
      ],
    ),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10.w),
          height: 50.h,
          width: 55.w,
          decoration: BoxDecoration(
            //color: Colors.pink,
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
              image: AssetImage("assets/icons/image_1.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 9.w),
              child: courseReusableText(
                text: "UI Design",
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryText,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.w),
              child: courseReusableText(
                text: "UI Design",
                fontSize: 10.sp,
                fontWeight: FontWeight.normal,
                color: AppColors.primaryThreeElementText,
              ),
            ),
          ],
        ),
        SizedBox(width: 110.w),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.chevronRight,
          ),
        ),
      ],
    ),
  );
}
