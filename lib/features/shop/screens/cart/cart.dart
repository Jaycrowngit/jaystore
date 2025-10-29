import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaystore/common/widgets/appbar/appbar.dart';
import 'package:jaystore/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:jaystore/features/shop/screens/checkout/checkout.dart';
import 'package:jaystore/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow:true, title:Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body:Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        /// Item in Cart
        child: TCartItems(),
        ) ,

        ///-- checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => const TCheckoutScreen()), child: Text('Checkout \$2560')),
      ),
    );
  }
}

