import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jaystore/common/widgets/appbar/appbar.dart';
import 'package:jaystore/common/widgets/images/t_circular_image.dart';
import 'package:jaystore/common/widgets/text/section_heading.dart';
import 'package:jaystore/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:jaystore/utils/constants/image_strings.dart';
import 'package:jaystore/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Profile')),
      ///---Body
      ///
      body:SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                   const TCircularImage(image:TImages.user, width: 80, height: 80,),
                    TextButton(onPressed: (){}, child: const Text('Change profile picture')),
                
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: TSizes.spaceBtwItems /2,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              const TSectionHeading(title: 'Profile Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),
              ///--- Profile Menu Card
              TProfileMenu(title: 'Name', value: 'John Jaycrown', onPressed: () {}),
              TProfileMenu(title: 'Username', value: 'Jaycrown', onPressed: () {}),
              
              /// Personal Info
              /// 
              const Divider(),
               TSectionHeading(title: 'Personal Information', showActionButton: false,),
               TProfileMenu(title: 'User ID', value: ' 45328', icon: Iconsax.copy,onPressed: () {}),
               TProfileMenu(title: 'E-mail', value: 'jaycrown9119@gmail.come', onPressed: () {}),
               TProfileMenu(title: 'Phone Number', value: '+234 809 119 0946', onPressed: () {}),
               TProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
               TProfileMenu(title: 'Date of Birth', value: ' 10 Oct, 1990', onPressed: () {}),

               const Divider(),
               const SizedBox(height: TSizes.spaceBtwItems,),

               Center(
                child: TextButton(
                  onPressed: () {}, 
                  child: const Text('Close Account', style: TextStyle(color: Colors.red)),
                  ),
               ),
             
            ],
          ),
          ),
      ),
    );
  }
}

