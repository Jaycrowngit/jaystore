import 'package:flutter/material.dart';
import 'package:jaystore/common/styles/spacing_stye.dart';
import 'package:jaystore/common/widgets/login_signup/form_divider.dart';
import 'package:jaystore/common/widgets/login_signup/social_buttons.dart';
import 'package:jaystore/features/authentication/screens/login/widgets/login_form.dart';
import 'package:jaystore/features/authentication/screens/login/widgets/login_header.dart';
import 'package:jaystore/utils/constants/sizes.dart';
import 'package:jaystore/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-title
              const TLoginHeader(),

              /// Form
              const TLoginForm(),

              /// Divider
            
             const TFormDivider(dividerText: TTexts.orSignInWith),

              const SizedBox(height: TSizes.spaceBtwSections,),
              ///  Add Footer (Social login buttons, etc.)
               const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

