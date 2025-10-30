import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaystore/common/widgets/appbar/appbar.dart';
import 'package:jaystore/common/widgets/brands/brand_card.dart';
import 'package:jaystore/common/widgets/layouts/grid_layouts.dart';
import 'package:jaystore/common/widgets/text/section_heading.dart';
import 'package:jaystore/features/shop/screens/brands/brand_product.dart';
import 'package:jaystore/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Brands',), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///--Heading
              TSectionHeading(title: 'Brands', showActionButton: false,),
              SizedBox(height: TSizes.spaceBtwItems),

              ///--- Brands 
              TGridLayout(
                itemCount: 10,  
                mainAxisExtent: 80,
                itemBuilder: (_, index) => TBrandCard(showBorder: true, onTap: () =>Get.to(() => const BrandsProduct()) ,))

            ],
          ),
          ),
      ),
    );
  }
}