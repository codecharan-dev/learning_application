import 'package:learning_app/pages/application_page/application_page.dart';
import 'package:learning_app/pages/course_page/course_page.dart';
import 'package:learning_app/pages/profile_page/settings_page/settings_page.dart';
import 'package:learning_app/pages/sign_in_page/sign_in_page.dart';
import 'package:learning_app/pages/sign_up_page/sign_up_page.dart';

class Routes {
  static get routes {
    return {
      "SignInPage": (context) => const SignInPage(),
      "SignUpPage": (context) => const SignUpPage(),
      "ApplicationPage": (context) => const ApplicationPage(),
      "SettingsPage": (context) => const SettingsPage(),
      "CoursePage": (context) => const CoursePage(),
    };
  }
}
