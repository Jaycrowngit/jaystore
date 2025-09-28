import 'package:flutter/material.dart';
import 'package:jaystore/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:jaystore/utils/constants/colors.dart';
import 'package:jaystore/utils/constants/sizes.dart';
import 'package:jaystore/utils/devices/device_utility.dart';
import 'package:jaystore/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked:controller.dotNavigationClick ,
          count: 3,
          effect: ExpandingDotsEffect(
            dotHeight:6,
            activeDotColor: dark ? TColors.light: TColors.dark ,
          ),
        ),
      );
  }
}