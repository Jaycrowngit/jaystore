import 'package:flutter/material.dart';
import 'package:jaystore/common/widgets/chips/choice_chip.dart';
import 'package:jaystore/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:jaystore/common/widgets/text/product_price_text.dart';
import 'package:jaystore/common/widgets/text/product_text.dart';
import 'package:jaystore/common/widgets/text/section_heading.dart';
import 'package:jaystore/utils/constants/colors.dart';
import 'package:jaystore/utils/constants/sizes.dart';
import 'package:jaystore/utils/helpers/helper_functions.dart';

class TProductAttribute extends StatelessWidget {
  const TProductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        /// --- Selected Attrinute Pricing & Description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkenGrey: TColors.grey,
          child: Column(
            children: [
              /// Title, price and stack stavs
              Row(
                children: [
                const TSectionHeading(title: 'Variation', showActionButton: false,),
                const SizedBox(width: TSizes.spaceBtwItems,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                      const TProductTitleText(title: 'Price :', smallSize: true),
                      const SizedBox(width: TSizes.spaceBtwItems,),
              
                      /// Actual price
                      Text('\$25', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),

                      const SizedBox(width: TSizes.spaceBtwItems,),

                      const TProductPriceText(price: '20')
                    ],
                  ),

                  /// Stack
                  Row(
                    children: [
                      const TProductTitleText(title: 'Stock :', smallSize: true,),
                      const SizedBox(width: TSizes.spaceBtwItems,),
                      Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),

                    ],
                  ),
                  ]
                  ),
                ],
              ),
              /// Veriation Description
              const TProductTitleText(title: 'This is the description of the product and it can go upto max', smallSize: true, maxLines: 4,),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        /// --- Attribute
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Colors', showActionButton: false,),
            SizedBox(height: TSizes.spaceBtwItems /2),
           Wrap(
            spacing: 5,
            children: [
               TChoiceChip(text: 'green', selected: true, onselected: (value){}),
            TChoiceChip(text: 'blue', selected: false,onselected: (value){}),
            TChoiceChip(text: 'yellow', selected: false,onselected: (value){}),
                           TChoiceChip(text: 'green', selected: true, onselected: (value){}),
            TChoiceChip(text: 'blue', selected: false,onselected: (value){}),
            TChoiceChip(text: 'yellow', selected: false,onselected: (value){}),
            ],
           ),
          ],
        ),
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Sizes', showActionButton: false,),
            SizedBox(height: TSizes.spaceBtwItems /2),
            Wrap(
              spacing: 7,
              children: [
                TChoiceChip(text: 'EU 34', selected: true,onselected: (value){}),
            TChoiceChip(text: 'EU 36', selected: false,onselected: (value){}),
            TChoiceChip(text: 'EU 38', selected: false,onselected: (value){}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
