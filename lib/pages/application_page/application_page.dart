import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learning_app/common/values/colors/colors.dart';
import 'package:learning_app/pages/application_page/app_page_widget.dart';
import 'package:learning_app/pages/application_page/bloc/application_bloc.dart';


class ApplicationPage extends StatefulWidget {
  const ApplicationPage({Key? key}) : super(key: key);

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationBloc, ApplicationState>(
      builder: (context, state) {
        return Container(
          color: Colors.white,
          child: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
              body: buildPage(state.indexS),
              bottomNavigationBar: Container(
                width: 375.w,
                height: 50.h,
                // color: Colors.pink,
                decoration: BoxDecoration(
                  color: AppColors.primaryElement,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.w),
                      topRight: Radius.circular(20.w)),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primarySecondaryElementText
                          .withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                    ),
                  ],
                ),
                child: BottomNavigationBar(
                  showUnselectedLabels: false,
                  showSelectedLabels: false,
                  type: BottomNavigationBarType.shifting,
                  selectedItemColor: AppColors.primaryElement,
                  unselectedItemColor: AppColors.primaryFourElementText,
                  currentIndex: state.indexS,
                  onTap: (value) {
                    BlocProvider.of<ApplicationBloc>(context)
                        .add(ApplicationTriggerEvent(indexE: value));
                  },
                  elevation: 0,
                  items: botNavBarItems,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
