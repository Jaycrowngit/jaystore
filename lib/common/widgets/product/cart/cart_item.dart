import 'package:flutter/material.dart';
import 'package:jaystore/common/widgets/images/t_rounded_image.dart';
import 'package:jaystore/common/widgets/text/product_text.dart';
import 'package:jaystore/common/widgets/text/verify_brand_title_text_icon.dart';
import 'package:jaystore/utils/constants/colors.dart';
import 'package:jaystore/utils/constants/image_strings.dart';
import 'package:jaystore/utils/constants/sizes.dart';
import 'package:jaystore/utils/helpers/helper_functions.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ///Image
        TRoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkenGrey : TColors.light,
          ),
          const SizedBox(width: TSizes.spaceBtwItems),
    
    
          /// Title, Price, Sizes
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TBrandTitleWithVerifiedIcon(title: ' Nike'),
                Flexible(child: TProductTitleText(title:'Black Sport Shoes', maxLines: 1,)),
            
                /// Attribute
                 Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: ' Color ', style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: 'Green ', style: Theme.of(context).textTheme.bodyLarge),
                      TextSpan(text: 'Size ', style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: 'UK 08 ', style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  ),
                  ),
              ],
            ),
          ),
      ],
    );
  }
}