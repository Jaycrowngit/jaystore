import 'package:flutter/material.dart';
import 'package:jaystore/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:jaystore/common/widgets/images/t_circular_image.dart';
import 'package:jaystore/common/widgets/text/product_price_text.dart';
import 'package:jaystore/common/widgets/text/product_text.dart';
import 'package:jaystore/common/widgets/text/verify_brand_title_text_icon.dart';
import 'package:jaystore/utils/constants/colors.dart';
import 'package:jaystore/utils/constants/enums.dart';
import 'package:jaystore/utils/constants/image_strings.dart';
import 'package:jaystore/utils/constants/sizes.dart';
import 'package:jaystore/utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price and sales prices
        Row(
          children: [
               TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding:  EdgeInsets.symmetric(
                        horizontal: TSizes.sm,
                        vertical: TSizes.xs,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                    const SizedBox(width: TSizes.spaceBtwItems,),

                    /// Prices tag
                    Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
                    const SizedBox(width: TSizes.spaceBtwItems,),
                    const TProductPriceText(price: '175', isLarge: true,),
                ],
              ),
             const SizedBox(height: TSizes.spaceBtwItems /1.5),
              /// Title
              const TProductTitleText(title: 'Green Nike Sport Shirt'),
              const SizedBox(height: TSizes.spaceBtwItems /1.5),
            /// Stack Status
              Row(
                children: [
                  const TProductTitleText(title: 'Status :'),
                  const SizedBox(width: TSizes.spaceBtwItems /1.5),
                  Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems /1.5),
            /// Brand
           Row(
             children: [
              TCircularImage(image: TImages.nikeLogo,
              width: 32,
              height: 32,
              overLayerColor: darkMode  ? TColors.white: TColors.black, ),
               const TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.medium,),
             ],
           )
      ],
    );
  }
}