import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app/pages/application_page/bloc/application_bloc.dart';
import 'package:learning_app/pages/course_page/bloc/course_bloc.dart';
import 'package:learning_app/pages/home_page/bloc/home_bloc.dart';
import 'package:learning_app/pages/profile_page/settings_page/bloc/settings_bloc.dart';
import 'package:learning_app/pages/sign_in_page/bloc/sign_in_bloc.dart';
import 'package:learning_app/pages/sign_up_page/bloc/sign_up_bloc.dart';
import 'package:learning_app/pages/welcome_page/bloc/welcome_bloc.dart';

class LearingAppBlocProviders {
  static get learingAppBlocProviders {
    return [
      BlocProvider(
        create: (context) => WelcomeBloc(),
      ),
      BlocProvider(
        create: (context) => SignInBloc(),
      ),
      BlocProvider(
        create: (context) => SignUpBloc(),
      ),
      BlocProvider(
        create: (context) => ApplicationBloc(),
      ),
      BlocProvider(
        create: (context) => HomeBloc(),
      ),
      BlocProvider(
        create: (context) => SettingsBloc(),
      ),
      BlocProvider(
        create: (context) => CourseBloc(),
      ),
    ];
  }
}
