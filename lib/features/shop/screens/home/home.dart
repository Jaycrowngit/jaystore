import 'package:flutter/material.dart';
import 'package:jaystore/common/widgets/custom_shapes/container/primar_header_container.dart';
import 'package:jaystore/common/widgets/custom_shapes/container/search_container.dart';
import 'package:jaystore/common/widgets/text/section_heading.dart';
import 'package:jaystore/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:jaystore/features/shop/screens/home/widgets/home_categories.dart';
import 'package:jaystore/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// --- Home AppBar -----
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  /// ---- Search Bar -----
                  TSearchContainer(
                    text:'Search in store' 
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  /// ---Categories ---
                  Padding(padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      TSectionHeading(title: 'Popular categories', showActionButton: false,textColor: Colors.white,),
                      const SizedBox(height: TSizes.spaceBtwItems),
                      // Categories
                      THomeCategories(),
                    ],
                  ),)
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }
}

