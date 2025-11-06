import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaystore/features/authentication/screens/onboarding/onboarding.dart';
import 'package:jaystore/utils/constants/colors.dart';
import 'package:jaystore/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      /// show loader or circular progress indicator meanwhile Authentication Repository is deciding to show relevant screen
      home: const Scaffold(backgroundColor: TColors.primary, body: Center(child: CircularProgressIndicator(color: Colors.white))),
       
      // Optional: centralize navigation
      // initialRoute: '/',
      // getPages: [
      //   GetPage(name: '/', page: () => const OnBoardingScreen()),
      // ],
    );
  }
}
