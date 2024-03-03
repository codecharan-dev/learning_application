import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learning_app/common/values/colors/colors.dart';
import 'package:learning_app/pages/welcome_page/bloc/welcome_bloc.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomeState();
}

class _WelcomeState extends State<WelcomePage> {
  final PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: BlocBuilder<WelcomeBloc, WelcomeState>(
          builder: (context, state) {
            return Container(
              margin: const EdgeInsets.only(
                top: 35,
              ),
              width: 360.w,
              child: Stack(
                children: [
                  PageView(
                    controller: pageController,
                    onPageChanged: (indexValueOfThePageView) {
                      state.page = indexValueOfThePageView;
                      BlocProvider.of<WelcomeBloc>(context).add(WelcomeEvent());
                      //print("$indexValueOfThePageView");
                    },
                    children: [
                      welcomePageView(
                        0,
                        context,
                        "assets/images/reading.png",
                        "First See Learning",
                        "Forget about a form of paper, all knowledge in one learning.",
                        "Next",
                      ),
                      welcomePageView(
                        1,
                        context,
                        "assets/images/boy.png",
                        "Connect With Everyone",
                        "Always keep touch in with your tutor & friend. Let's get connected.",
                        "Next",
                      ),
                      welcomePageView(
                        2,
                        context,
                        "assets/images/man.png",
                        "Always Fascinated Learning",
                        "Anywhere, anytime. The time is at your discretion, so study whenever you want.",
                        "Get Started",
                      ),
                    ],
                  ),
                  Positioned(
                    left: 150.w,
                    bottom: 80.h,
                    child: DotsIndicator(
                      dotsCount: 3,
                      position: state.page,
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
              ),
            );
          },
        ),
      ),
    );
  }

  Widget welcomePageView(int index, BuildContext context, String imagePath,
      String title, String subTitle, String buttonName) {
    return Column(
      children: [
        SizedBox(
          //color: Colors.yellow
          width: 345.w,
          height: 315.h,
          child: Image(
            image: AssetImage(imagePath),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 24.sp,
            color: AppColors.primaryText,
            fontWeight: FontWeight.normal,
          ),
        ),
        Container(
          width: 370.w,
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          //color: Colors.amberAccent,
          child: Text(
            subTitle,
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.primarySecondaryElementText,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        const SizedBox(height: 135),
        SizedBox(
          height: 45.h,
          width: 300.w,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryElement,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            onPressed: () {
              // within the index 0 < 2 which means 0 to 1
              if (index < 2) {
                // animation
                pageController.animateToPage(
                  index + 1,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              } else {
               
                // jump to a new page
               // Global.storageServiceGlobal?.setBool(
                 //   key: AppConstants.storageDeviceOpenFirstTimeKey,
                  //  value: true,);
                   //  print(
                    //"The value is ${Global.storageServiceGlobal?.getDeviceFirstOpen()}");
                
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  "SignInPage",
                  (route) => false,
                );
              }
            },
            child: Text(
              buttonName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
