import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jaystore/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:jaystore/data/repositories/authentication_repository.dart';

Future<void> main() async {

  ///-- Widget Binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //--  Init Local Storage 
  await GetStorage.init();

  // Await Slash until other items load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // Initialize Firebase

  //  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform) 
  //  .then((FirebaseApp value) =>Get.put(AuthenticationRepository()));

  //TODO: Initialize Authentication
  
 
  
  runApp(const App());
}
