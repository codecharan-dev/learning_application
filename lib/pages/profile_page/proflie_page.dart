import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learning_app/pages/profile_page/widgets/profile_page_widgets.dart';

class ProfliePage extends StatefulWidget {
  const ProfliePage({Key? key}) : super(key: key);

  @override
  State<ProfliePage> createState() => _ProflieState();
}

class _ProflieState extends State<ProfliePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: profileAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            profilePicture(),
            SizedBox(height: 6.h),
            reusableText(
              text: "Charan",
              fontweight: FontWeight.bold,
              fontsize: 16.sp,
            ),
            SizedBox(height: 50.h),
            buildListView(context),
          ],
        ),
      ),
    );
  }

 

  

  
}
