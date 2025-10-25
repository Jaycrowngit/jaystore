import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jaystore/common/widgets/text/section_heading.dart';
import 'package:readmore/readmore.dart';
import 'package:jaystore/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:jaystore/features/shop/screens/product_details/widgets/product_attribute.dart';
import 'package:jaystore/features/shop/screens/product_details/widgets/product_details_image_slider.dart';
import 'package:jaystore/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:jaystore/features/shop/screens/product_details/widgets/rating_share.dart';
import 'package:jaystore/utils/constants/sizes.dart';



class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
          /// Product Image Slider
          TProductImageSlider(),

          /// Product details
          Padding(
            padding: EdgeInsetsGeometry.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
            child: Column(
              children: [
                ///- Rating & Share Button
              TRatingAndShare(),
              /// - Price,Title,Stack, &Brand
              TProductMetaData(),
              /// --Attributes
              TProductAttribute(),
              const SizedBox(height:TSizes.spaceBtwSections),
              /// --Checkout Button
              SizedBox(width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){}, 
                  child: Text('Checkout'),
                  ),
              ),
                  const SizedBox(height:TSizes.spaceBtwItems),

              /// -Description
              const TSectionHeading(title: 'Description', showActionButton: false,),
              const SizedBox(height:TSizes.spaceBtwItems),
              
              ReadMoreText(
                'This is a product description for a blue Nike short sleeve less vest. There are more things that can be added but were only adding this colors for now. the rest will be handled by the backend...    ',
                trimLines: 2,
                trimMode:TrimMode.Line,
                trimCollapsedText:'Show more',
                trimExpandedText: 'Less',
                moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
              ),
              /// -Reviews
               Divider(),
               const SizedBox(height:TSizes.spaceBtwItems),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TSectionHeading(title: 'Reviews (199)', showActionButton: false,),
                  IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_3)),
                ],
               ),
              const SizedBox(height:TSizes.spaceBtwSections),
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}

