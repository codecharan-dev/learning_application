import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learning_app/common/values/colors/colors.dart';

AppBar profileAppBar() {
  return AppBar(
    centerTitle: false,
    title: SizedBox(
      height: 35.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 14.7.h,
            child: Image.asset("assets/icons/menu.png"),
          ),
          SizedBox(
            height: 20.h,
            width: 80.w,
            //color: Colors.yellow,
            child: const Center(
              child: Text(
                "Profile",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // print("clicked");
            },
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                // color: Colors.yellow
              ),
              height: 30.h,
              width: 25.w,
              child: Image.asset("assets/icons/more-vertical.png"),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget profilePicture() {
  return Container(
    alignment: Alignment.bottomRight,
    margin: EdgeInsets.only(left: 140.w, top: 20.h, right: 140.w),
    height: 80.w,
    width: 80.w,
    decoration: const BoxDecoration(
      image: DecorationImage(image: AssetImage("assets/icons/headpic.png")),
      color: Colors.pink,
      shape: BoxShape.circle,
    ),
    child: Image.asset(
      "assets/icons/edit_3.png",
      width: 28.w,
      height: 25.h,
    ),
  );
}

Widget reusableText(
    {required String text,
    required FontWeight fontweight,
    required double fontsize}) {
  return Container(
    margin: const EdgeInsets.all(0),
    child: Text(
      text,
      style: TextStyle(
        fontWeight: fontweight,
        fontSize: fontsize,
      ),
    ),
  );
}

Map<String, String> imagesInfo = {
  "Settings": "assets/icons/settings.png",
  "Payment Details": "assets/icons/credit-card.png",
  "Acheivement": "assets/icons/award.png",
  "Love": "assets/icons/heart(1).png",
  "Learning Remainders": "assets/icons/cube.png",
};

Widget buildListView(BuildContext context) {
  return Column(
    // mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ...List.generate(imagesInfo.length, (index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              "SettingsPage",
              (route) => true,
            );
            //print("clicked");
          },
          child: Container(
            //color: Colors.yellow,
            margin: EdgeInsets.only(bottom: 15.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 25.w),
                Container(
                  height: 38.h,
                  width: 42.w,
                  //padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: AppColors.primaryElement,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.w),
                    ),
                  ),
                  child: Image.asset(
                    imagesInfo.values.elementAt(index),
                  ),
                ),
                SizedBox(width: 15.w),
                reusableText(
                  text: imagesInfo.keys.elementAt(index),
                  fontweight: FontWeight.bold,
                  fontsize: 15.sp,
                )
              ],
            ),
          ),
        );
      })
    ],
  );
}

