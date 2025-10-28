import 'package:flutter/material.dart';
import 'package:jaystore/common/widgets/appbar/appbar.dart';
import 'package:jaystore/common/widgets/product/cart/cart_item.dart';
import 'package:jaystore/common/widgets/text/product_price_text.dart';
import 'package:jaystore/features/shop/screens/cart/add_remove_button.dart';
import 'package:jaystore/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow:true, title:Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body:Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (_,__) => const SizedBox(height: TSizes.spaceBtwSections),
          itemCount: 10,  
          itemBuilder: (_, __) => Column(
            children: [
              TCartItem(),
              SizedBox(height: TSizes.spaceBtwItems),
              Row(
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
        ),
        ) ,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){}, child: Text('Checkout \$2560')),
      ),
    );
  }
}

