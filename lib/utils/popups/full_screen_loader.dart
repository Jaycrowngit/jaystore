import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaystore/common/widgets/loader/animation_loader.dart';
import 'package:jaystore/utils/constants/colors.dart';
import 'package:jaystore/utils/helpers/helper_functions.dart';

/// A utility class for managing a full-screen loading dialog
class TFullScreenLoader {
  /// open a full-screen loader dialog with given text and animation
  /// This method doesn't return anything
  /// 
  /// parameter:
  /// -text: The text to be displayed in the loading dialog
  /// - animation: The Lottie animation to be shown
  /// 
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!, // use Get.overlayContext for overlay dialog
      barrierDismissible: false, // The dialog cannot be dismissed by tapping outside it 
      builder: (_) => PopScope(
        canPop: false,// Disable popping with the back button
        child: Container(
          color: THelperFunctions.isDarkMode(Get.context!) ? TColors.dark : TColors.light,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250),// Adjust the spacing as needed
              TAnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ),
        ),
    );
  }

  ///  stop the currently open loading dialog
  /// This method doesn't return anything.
  static stopLoading(){
    Navigator.of(Get.overlayContext!).pop(); // Close the dialog using the navigator
  }
}