import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app/common/routes/bloc_observer.dart';

class Global {
//static StorageService? storageServiceGlobal;

  static Future initGlobal() async {
    WidgetsFlutterBinding.ensureInitialized();
    // Here you created the bloc.observer and assigned MyGlobalObserver
    Bloc.observer = MyGlobalObserver();
    await Firebase.initializeApp();
   // storageServiceGlobal = await storageServiceGlobal?.initStorageService();
  }
}
