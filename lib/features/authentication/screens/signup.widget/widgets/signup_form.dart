import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jaystore/features/authentication/screens/login/login.dart';
import 'package:jaystore/features/authentication/screens/signup.widget/verify_email.dart';
import 'package:jaystore/features/authentication/screens/signup.widget/widgets/terms_condition_checkedbox.dart';
import 'package:jaystore/utils/constants/sizes.dart';
import 'package:jaystore/utils/constants/text_strings.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

 

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          /// First & Last Name in one row
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputField),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
    
          const SizedBox(height: TSizes.spaceBtwInputField),
    
          /// Username
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
    
          const SizedBox(height: TSizes.spaceBtwInputField),
    
          /// Email
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
    
          const SizedBox(height: TSizes.spaceBtwInputField),
    
          /// Phone Number
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
    
          const SizedBox(height: TSizes.spaceBtwInputField),
    
          /// Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
    
          const SizedBox(height: TSizes.spaceBtwItems),
    
          /// Terms and Condition
          TTermsandConditionCheckedbox(),
    
          const SizedBox(height: TSizes.spaceBtwSections),
    
          /// Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(TVerifyEmailScreen()),
              child: const Text(TTexts.createAccount),
            ),
          ),
    
          const SizedBox(height: TSizes.spaceBtwItems),
    
/// Already have an account? Login
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text(
      TTexts.alreadyHaveAnAcct,
      style: Theme.of(context).textTheme.bodyMedium,
    ),
    TextButton(
      onPressed: () {
        //  Navigate to Login Screen
         Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
      },
      child: const Text(TTexts.signIn),
    ),
  ],
),

        ],
      ),
    );
  }
}

