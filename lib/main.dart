import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learning_app/common/bloc_providers/bloc_providers.dart';
import 'package:learning_app/common/routes/routes.dart';
import 'package:learning_app/global.dart';
import 'package:learning_app/pages/application_page/application_page.dart';

void main() async {
  await Global.initGlobal();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );
    return MultiBlocProvider(
      providers: LearingAppBlocProviders.learingAppBlocProviders,
      child: ScreenUtilInit(
        //designSize: Size(365, 812),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Learning App',
          home: const ApplicationPage(),
          routes: Routes.routes,
        ),
      ),
    );
  }
}


/* 

packages used for this project [pubspec.yaml]

* flutter_bloc: ^8.1.4
* flutter_screenutil: ^5.9.0
* dots_indicator: ^3.0.0
* font_awesome_flutter: ^10.7.0
* firebase_auth: ^4.17.4
* firebase_core: ^2.25.4
* fluttertoast: ^8.2.4
* shared_preferences: ^2.2.2
**********************************

PODS:
  - Firebase/Auth (10.20.0):
    - Firebase/CoreOnly
    - FirebaseAuth (~> 10.20.0)
  - Firebase/CoreOnly (10.20.0):
    - FirebaseCore (= 10.20.0)
  - firebase_auth (4.17.4):
    - Firebase/Auth (= 10.20.0)
    - firebase_core
    - Flutter
  - firebase_core (2.25.4):
    - Firebase/CoreOnly (= 10.20.0)
    - Flutter
  - FirebaseAppCheckInterop (10.21.0)
  - FirebaseAuth (10.20.0):
    - FirebaseAppCheckInterop (~> 10.17)
    - FirebaseCore (~> 10.0)
    - GoogleUtilities/AppDelegateSwizzler (~> 7.8)
    - GoogleUtilities/Environment (~> 7.8)
    - GTMSessionFetcher/Core (< 4.0, >= 2.1)
    - RecaptchaInterop (~> 100.0)
  - FirebaseCore (10.20.0):
    - FirebaseCoreInternal (~> 10.0)
    - GoogleUtilities/Environment (~> 7.12)
    - GoogleUtilities/Logger (~> 7.12)
  - FirebaseCoreInternal (10.21.0):
    - "GoogleUtilities/NSData+zlib (~> 7.8)"
  - Flutter (1.0.0)
  - fluttertoast (0.0.2):
    - Flutter
    - Toast
  - GoogleUtilities/AppDelegateSwizzler (7.12.0):
    - GoogleUtilities/Environment
    - GoogleUtilities/Logger
    - GoogleUtilities/Network
  - GoogleUtilities/Environment (7.12.0):
    - PromisesObjC (< 3.0, >= 1.2)
  - GoogleUtilities/Logger (7.12.0):
    - GoogleUtilities/Environment
  - GoogleUtilities/Network (7.12.0):
    - GoogleUtilities/Logger
    - "GoogleUtilities/NSData+zlib"
    - GoogleUtilities/Reachability
  - "GoogleUtilities/NSData+zlib (7.12.0)"
  - GoogleUtilities/Reachability (7.12.0):
    - GoogleUtilities/Logger
  - GTMSessionFetcher/Core (3.3.1)
  - PromisesObjC (2.3.1)
  - RecaptchaInterop (100.0.0)
  - shared_preferences_foundation (0.0.1):
    - Flutter
    - FlutterMacOS
  - Toast (4.1.0)

DEPENDENCIES:
  - firebase_auth (from `.symlinks/plugins/firebase_auth/ios`)
  - firebase_core (from `.symlinks/plugins/firebase_core/ios`)
  - Flutter (from `Flutter`)
  - fluttertoast (from `.symlinks/plugins/fluttertoast/ios`)
  - shared_preferences_foundation (from `.symlinks/plugins/shared_preferences_foundation/darwin`)

SPEC REPOS:
  trunk:
    - Firebase
    - FirebaseAppCheckInterop
    - FirebaseAuth
    - FirebaseCore
    - FirebaseCoreInternal
    - GoogleUtilities
    - GTMSessionFetcher
    - PromisesObjC
    - RecaptchaInterop
    - Toast

EXTERNAL SOURCES:
  firebase_auth:
    :path: ".symlinks/plugins/firebase_auth/ios"
  firebase_core:
    :path: ".symlinks/plugins/firebase_core/ios"
  Flutter:
    :path: Flutter
  fluttertoast:
    :path: ".symlinks/plugins/fluttertoast/ios"
  shared_preferences_foundation:
    :path: ".symlinks/plugins/shared_preferences_foundation/darwin"

SPEC CHECKSUMS:
  Firebase: 10c8cb12fb7ad2ae0c09ffc86cd9c1ab392a0031
  firebase_auth: 29a10d4129d53aa690c10dbd838ed1a059ef0c9b
  firebase_core: a46c312d8bae4defa3d009b2aa7b5b413aeb394e
  FirebaseAppCheckInterop: 69fc7d8f6a1cbfa973efb8d1723651de30d12525
  FirebaseAuth: 9c5c400d2c3055d8ae3a0284944c86fa95d48dac
  FirebaseCore: 28045c1560a2600d284b9c45a904fe322dc890b6
  FirebaseCoreInternal: 43c1788eaeee9d1b97caaa751af567ce11010d00
  Flutter: e0871f40cf51350855a761d2e70bf5af5b9b5de7
  fluttertoast: 31b00dabfa7fb7bacd9e7dbee580d7a2ff4bf265
  GoogleUtilities: 0759d1a57ebb953965c2dfe0ba4c82e95ccc2e34
  GTMSessionFetcher: 8a1b34ad97ebe6f909fb8b9b77fba99943007556
  PromisesObjC: c50d2056b5253dadbd6c2bea79b0674bd5a52fa4
  RecaptchaInterop: 7d1a4a01a6b2cb1610a47ef3f85f0c411434cb21
  shared_preferences_foundation: b4c3b4cddf1c21f02770737f147a3f5da9d39695
  Toast: ec33c32b8688982cecc6348adeae667c1b9938da

PODFILE CHECKSUM: 7be2f5f74864d463a8ad433546ed1de7e0f29aef

COCOAPODS: 1.15.2

*/