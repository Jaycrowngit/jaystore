import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:jaystore/features/authentication/screens/login/login.dart';
import 'package:jaystore/features/authentication/screens/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();


  ///  called from main.dart on app launch
  @override
  void onReady(){
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  /// Function to show Relevant screen
   screenRedirect() async {
    // Local Storage
    if (kDebugMode) {
      print('===============GET STORAGE==============');
      print(deviceStorage.read('isFirstTime'));
    }
    
    deviceStorage.writeIfNull('isFirstTime ', true);
    deviceStorage.read('isFirstTime') != true ? Get.offAll(() => const LoginScreen()) : Get.offAll(const OnBoardingScreen());
   }

   /*-------------------Email & password sign-in ---------------*/
 
   /// [EmailAuthentication] - signIn
 
  ///  [EmailAuthentication] - REGISTER
 
  ///  [ReAuthenticate] - ReAuthenticate user
 
 ///   [EmailVerification] - MAIL VERIFICATION
 
 ///   [EmailAuthentication] - FORGET PASSWORD
 
  /*-------------------Email & password sign-in ---------------*/
 
   /// [GoogleAuthentication] - GOOGLE
 
  ///  [FacebookAuthentication] - FACEBOOK
 
  /*-------------------Email & password sign-in ---------------*/
 
   /// [Logout User] - valid for any authentication
 
  ///  Delete User Account  - Remove user Auth and Accout
  
}