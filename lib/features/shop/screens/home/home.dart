import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaystore/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:jaystore/common/widgets/custom_shapes/container/search_container.dart';
import 'package:jaystore/common/widgets/layouts/grid_layouts.dart';
import 'package:jaystore/common/widgets/product/product/brand_cards/product_card_vertical.dart';
import 'package:jaystore/common/widgets/text/section_heading.dart';
import 'package:jaystore/features/shop/screens/all_products/all_products.dart';
import 'package:jaystore/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:jaystore/features/shop/screens/home/widgets/home_categories.dart';
import 'package:jaystore/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:jaystore/utils/constants/image_strings.dart';
import 'package:jaystore/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header Section
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Search Bar
                  const TSearchContainer(text: 'Search in store'),
                  const SizedBox(height: TSizes.spaceBtwSections /2),

                  /// Categories
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        const TSectionHeading( title: 'Popular categories',showActionButton: false,textColor: Colors.white),
                        const SizedBox(height: TSizes.spaceBtwItems /2),

                        /// Home Categories
                        const THomeCategories(),
                      ],
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body Section
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Promo Slide Adv display
                  TPromoSlider(banners:  [ TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3,
                            ],
                            ),
                            const SizedBox(height: TSizes.spaceBtwSections /2),

                            /// ---Heading
                             TSectionHeading(title: 'Popular Products', onPressed: () => Get.to(() => const AllProductsScreen())),
                            const SizedBox(height: TSizes.spaceBtwItems),
                            /// Popular Products display GridLayout
                          TGridLayout(itemCount: 6, itemBuilder: (_, index) => const TProductCardVertical())  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

