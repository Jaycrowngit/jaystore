import 'package:flutter/material.dart';
import 'package:jaystore/common/widgets/appbar/appbar.dart';
import 'package:jaystore/common/widgets/images/t_rounded_image.dart';
import 'package:jaystore/common/widgets/product/product/brand_cards/product_card_horizontal.dart';
import 'package:jaystore/common/widgets/text/section_heading.dart';
import 'package:jaystore/utils/constants/image_strings.dart';
import 'package:jaystore/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Sports Shirt'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child:Column(
            children: [
              ///-- product Banner 
              TRoundedImage(width: double.infinity,imageUrl: TImages.banner3, applyImageRadius: true,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// Sub-Categories
              Column(
                children: [
                  ///--Heading
                  TSectionHeading(title:'Sports Shirts', onPressed: (){}),
                  const SizedBox(height: TSizes.spaceBtwItems /2),

                  SizedBox(
                    height: 120,
                  
                    child: ListView.separated(
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: ( _, __) => const SizedBox(width: TSizes.spaceBtwItems),
                      itemBuilder: ( _, index) => const TProductCardHorizontal(),
                    ),
                  ),


                ],
              ),
            ],
          ) ,
          ),
      ),
    );
  }
}