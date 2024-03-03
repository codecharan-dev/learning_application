import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learning_app/common/values/colors/colors.dart';
import 'package:learning_app/pages/course_page/widgets/course_page_widgets.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  // @override
  // void initState() {
  //   super.initState();

  // }

  // @override void didChangeDependencies() {
  //   var data = ModalRoute.of(context)!.settings.arguments as Map;
  //   debugPrint("${data.values}");
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: courseAppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 15.h,
                    horizontal: 25.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 1st big image
                      thumbNail(),
                      // author page row
                      menuView(),
                      SizedBox(height: 18.h),
                      //course description text
                      courseReusableText(
                        text: "Course Description",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryText,
                      ),
                      SizedBox(height: 10.h),
                      // course description
                      courseReusableText(
                          text:
                              "Visual identity. The User Interface(UI) is the point of human - computer interaction and communication in a device. This can include display screens, keyboards, mouse and appearance of the desktop, It also the way through which a user interacts with an application or website.",
                          fontSize: 10.sp,
                          fontWeight: FontWeight.normal,
                          color: AppColors.primaryThreeElementText),
                      SizedBox(height: 20.h),
                      // go buy button
                      goBuyButton(),
                      SizedBox(height: 18.h),
                      // This course includes text
                      courseReusableText(
                        text: "This course includes",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryText,
                      ),
                      // column under the course includes
                      underCourseInclude(),
                      SizedBox(height: 18.h),
                      // Lessons list text
                      courseReusableText(
                        text: "Lessons list",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryText,
                      ),
                      listOfLessons(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
