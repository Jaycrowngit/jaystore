import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaystore/utils/constants/image_strings.dart';
import 'package:jaystore/utils/popups/full_screen_loader.dart';
import 'package:jaystore/utils/popups/loaders.dart'; 

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// --- Form Controllers ---
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();

  /// --- Observables ---
  final hidePassword = true.obs;

  /// --- Form Key ---
  final signupFormKey = GlobalKey<FormState>();

  /// --- SIGNUP FUNCTION ---
  Future<void> signup() async {
    try {
      // 1. Start Loading
      TFullScreenLoader.openLoadingDialog(
        'We are processing your information...',
        TImages.verifyIllustration,
      );

      // 2. Check Internet Connectivity
      // final isConnected = await NetworkManager.instance.isConnected();
      // if (!isConnected) {
      //   TFullScreenLoader.stopLoading();
      //   TLoader.errorSnackBar(
      //     title: 'No Internet!',
      //     message: 'Please check your connection and try again.',
      //   );
      //   return;
      // }

      // 3. Validate Form
      if (!signupFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // 4. TODO: Privacy policy and Firebase registration logic here

      // 5. Success Message
      // TFullScreenLoader.stopLoading();
      // TLoader.successSnackBar(
      //   title: 'Success!',
      //   message: 'Account created successfully. Please verify your email.',
      // );

      // 6. Navigate to verification screen (example)
      // Get.to(() => VerifyEmailScreen());
    } catch (e) {
      // Handle any errors
      // TFullScreenLoader.stopLoading();
      // TLoader.errorSnackBar(
      //   title: 'Oh Snap!',
      //   message: e.toString(),
      // );
    }
  }
}
