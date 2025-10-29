import 'package:flutter/material.dart';
import 'package:jaystore/common/widgets/product/cart/cart_item.dart';
import 'package:jaystore/common/widgets/text/product_price_text.dart';
import 'package:jaystore/features/shop/screens/cart/add_remove_button.dart';
import 'package:jaystore/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,  
    this.showAddRemoveButton = true,
  });
  
    final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_,__) => const SizedBox(height: TSizes.spaceBtwSections),
      itemCount: 2,  
      itemBuilder: (_, __) => Column(
        children: [
          TCartItem(),
          if (showAddRemoveButton) const SizedBox(height: TSizes.spaceBtwItems),
          
          ///---  Add Remove Button Row with Total Price
          if (showAddRemoveButton) 
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                
                children: [
                  const SizedBox(width: 70),
          
                  /// Add Remove Buttons 
              TProductQuantityWithAddRemoveButton(),
                ],
              ),
              /// Product Text Price
              TProductPriceText(price: '256')
        ],
      ),
      ],
    ),
    );
  }
}


