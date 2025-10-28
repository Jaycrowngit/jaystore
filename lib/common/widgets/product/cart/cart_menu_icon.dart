import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jaystore/features/shop/screens/cart/cart.dart';
import 'package:jaystore/utils/constants/colors.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key, 
    this.iconColor, 
    required this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: () => Get.to(() => const CartScreen()), icon: Icon(Iconsax.shopping_bag, color:iconColor)),
        Positioned(
          right: 0,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: TColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('2', style: Theme.of(context).textTheme.labelSmall!.apply(color: TColors.white, fontSizeFactor: 1)),
            ),
          ),
        ),
      ],
    );
  }
}

