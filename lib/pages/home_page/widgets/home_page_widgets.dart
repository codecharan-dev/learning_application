import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learning_app/common/values/colors/colors.dart';
import 'package:learning_app/pages/home_page/bloc/home_bloc.dart';

AppBar homeAppBar() {
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
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                // color: Colors.pink,
              ),
              height: 40.h,
              width: 40.w,
              child: Image.asset("assets/icons/person.png"),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget homeViewWelcomeTextContainer() {
  return Container(
    // color: Colors.pink,
    margin: EdgeInsets.only(left: 20.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        homeText(
          text: "Hello,",
          textColor: AppColors.primaryThreeElementText,
          marginParameters: 15.h,
        ),
        homeText(
          text: "Charan",
          textColor: AppColors.primaryText,
          marginParameters: 0.h,
        ),
      ],
    ),
  );
}

Widget homeText({
  required String text,
  required Color textColor,
  required double marginParameters,
}) {
  return Container(
    margin: EdgeInsets.only(top: marginParameters),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
    ),
  );
}

Widget homeSearchView() {
  return Row(
    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        margin: EdgeInsets.only(left: 20.w),
        decoration: BoxDecoration(
          color: AppColors.primaryBackground,
          border: Border.all(color: AppColors.primaryFourElementText),
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        height: 36.h,
        width: 270.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.w),
              //color: Colors.yellow,
              width: 16.w,
              height: 16.h,
              child: Image.asset("assets/icons/search.png"),
            ),
            SizedBox(
              width: 240.w,
              height: 40.h,
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(5, 5, 0, 5),
                  hintText: "Search for course...",
                  hintStyle: TextStyle(
                    color: AppColors.primarySecondaryElementText,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(width: 10.w),
      InkWell(
        onTap: () {
          // print("I am clicked");
        },
        child: Container(
          //margin: EdgeInsets.only(top: 10.h),
          decoration: BoxDecoration(
              color: AppColors.primaryElement,
              borderRadius: BorderRadius.all(Radius.circular(13.w))),
          height: 36.h,
          width: 36.w,
          child: Image.asset("assets/icons/options.png"),
        ),
      ),
    ],
  );
}

Widget slidersView(BuildContext context, HomeState state) {
  return Column(
    children: [
      Center(
        child: Container(
            margin: EdgeInsets.only(top: 14.h),
            height: 140.h,
            width: 310.w,
            decoration: BoxDecoration(
              //color: Colors.pink,
              borderRadius: BorderRadius.all(
                Radius.circular(37.w),
              ),
            ),
            child: PageView(
              onPageChanged: (value) {
                BlocProvider.of<HomeBloc>(context)
                    .add(HomeDotsEvent(index: value));
                // print(value.toString());
              },
              children: [
                Image.asset("assets/icons/art.png", fit: BoxFit.fill),
                Image.asset("assets/icons/image_1.png", fit: BoxFit.fill),
                Image.asset("assets/icons/image_2.png", fit: BoxFit.fill)
              ],
            )),
      ),
      Container(
        margin: EdgeInsets.only(top: 5.h),
        child: DotsIndicator(
          dotsCount: 3,
          position: state.index,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryElement,
            color: Colors.grey,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget menuView() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(top: 12.h, right: 15.w),
        // color: Colors.pink,
        // height: 10.w,
        //width: 365.w,

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            reusableMenuText(
              marginParameters: 20.w,
              text: "Choose your course",
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryText,
            ),
            GestureDetector(
              onTap: () {
                //print("I am clicked");
              },
              child: reusableMenuText(
                marginParameters: 20.w,
                text: "See all",
                fontSize: 12.sp,
                fontWeight: FontWeight.normal,
                color: AppColors.primaryThreeElementText,
              ),
            ),
          ],
        ),
      ),
      Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //SizedBox(width: 20.w),
          forMenuButtonInsideTheMenuView(
            text: "All",
            width: 40.w,
            color: AppColors.primaryElement,
            reusableMenuTextColor: AppColors.primaryElementText,
          ),
          forMenuButtonInsideTheMenuView(
            text: "Popular",
            width: 60.w,
            color: Colors.white,
            reusableMenuTextColor: AppColors.primaryThreeElementText,
          ),
          forMenuButtonInsideTheMenuView(
            text: "Newest",
            width: 60.w,
            color: Colors.white,
            reusableMenuTextColor: AppColors.primaryThreeElementText,
          ),
        ],
      ),
    ],
  );
}

Widget forMenuButtonInsideTheMenuView({
  required String text,
  required double width,
  required Color color,
  required Color reusableMenuTextColor,
}) {
  return Container(
    margin: EdgeInsets.only(top: 15.h, left: 20.w),
    //padding: EdgeInsets.all(8.w),
    height: 23.h,
    width: width,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.all(
        Radius.circular(7.w),
      ),
    ),
    child: Center(
      child: reusableMenuText(
        marginParameters: 0.w,
        text: text,
        fontSize: 12.sp,
        fontWeight: FontWeight.normal,
        color: reusableMenuTextColor,
      ),
    ),
  );
}

Widget reusableMenuText({
  required String text,
  required double fontSize,
  required FontWeight fontWeight,
  required Color color,
  required double marginParameters,
}) {
  return Container(
    margin: EdgeInsets.only(left: marginParameters),
    child: Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    ),
  );
}

Map<String, String> menuImage = {
  "Flutter Course": "assets/icons/image_1.png",
  "React Native Course": "assets/icons/image_2.png",
  
};
Widget courseGrid(int index) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(menuImage.values.elementAt(index)),
        ),
        color: Colors.pink,
        borderRadius: BorderRadius.all(Radius.circular(16.w)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            softWrap: false,
            textAlign: TextAlign.left,
            overflow: TextOverflow.fade,
            maxLines: 1,
            menuImage.keys.elementAt(index).toString(),
            style: const TextStyle(
              color: AppColors.primaryElementText,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            softWrap: false,
            textAlign: TextAlign.left,
            overflow: TextOverflow.fade,
            maxLines: 1,
            "30 lessons",
            style: TextStyle(
              fontSize: 9.sp,
              color: AppColors.primaryFourElementText,
              fontWeight: FontWeight.normal,
            ),
          )
        ],
      ),
    );
  
      
}


/* 

Container(
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      image: const DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage("assets/icons/image_1.png"),
      ),
      color: Colors.pink,
      borderRadius: BorderRadius.all(Radius.circular(16.w)),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          softWrap: false,
          textAlign: TextAlign.left,
          overflow: TextOverflow.fade,
          maxLines: 1,
          "Best Course For IT",
          style: TextStyle(
            color: AppColors.primaryElementText,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          softWrap: false,
          textAlign: TextAlign.left,
          overflow: TextOverflow.fade,
          maxLines: 1,
          "30 lessons",
          style: TextStyle(
            fontSize: 9.sp,
            color: AppColors.primaryFourElementText,
            fontWeight: FontWeight.normal,
          ),
        )
      ],
    ),
  );



*/