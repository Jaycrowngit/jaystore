import 'package:flutter/material.dart';
import 'package:jaystore/common/widgets/brands/brand_showcase.dart';
import 'package:jaystore/common/widgets/layouts/grid_layouts.dart';
import 'package:jaystore/common/widgets/product/product/brand_cards/product_card_vertical.dart';
import 'package:jaystore/common/widgets/text/section_heading.dart';
import 'package:jaystore/utils/constants/image_strings.dart';
import 'package:jaystore/utils/constants/sizes.dart';

 class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return   ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
                Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    ///---Brand 
                     TBrandShowCase(images: [TImages.productImage1, TImages.productImage2,TImages.productImage3],),
                     TBrandShowCase(images: [TImages.productImage1, TImages.productImage2,TImages.productImage3],),
                     const SizedBox(height: TSizes.spaceBtwItems),
                     /// Product ----
                     TSectionHeading(title: 'You might like', onPressed: (){}),
                     const SizedBox(height: TSizes.spaceBtwItems),
                      
                     TGridLayout(itemCount: 4, itemBuilder:(_, index) => TProductCardVertical()),
                  ],
                ),
                ),
              ],
    );
  }
}