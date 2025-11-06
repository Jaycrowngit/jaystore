import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
// You will also need an import for the file containing your screenRedirect() function,
// and potentially one for GetX if you are using onReady() inside a GetX controller.

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

   }

   /*-------------------Email & password sign-in ---------------*/
   /// [EmailAuthentication] - signIn
  ///  [EmailAuthentication] - REGISTER
  ///  [ReAuthenticate] - ReAuthenticate user
 ///   [EmailVerification] - MAIL VERIFICATION
 ///   [EmailAuthentication] - FORGET PASSWORD
}