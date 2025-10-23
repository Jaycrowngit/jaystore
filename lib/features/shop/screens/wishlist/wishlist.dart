import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jaystore/common/widgets/appbar/appbar.dart';
import 'package:jaystore/common/widgets/icon/t_circular_icon.dart';
import 'package:jaystore/common/widgets/layouts/grid_layouts.dart';
import 'package:jaystore/common/widgets/product/product/brand_cards/product_card_vertical.dart';
import 'package:jaystore/features/shop/screens/home/home.dart';
import 'package:jaystore/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          TCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()))
        ],
      ),

      /// Body  
      body:  SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(itemCount: 6, itemBuilder: ( _,index) => const TProductCardVertical()),
            ],
          ),
          ),
      ),
    );
  }
}