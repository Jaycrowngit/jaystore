import 'package:flutter/material.dart';
import 'package:jaystore/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:jaystore/common/widgets/brands/brand_card.dart';
import 'package:jaystore/utils/constants/colors.dart';
import 'package:jaystore/utils/constants/sizes.dart';
import 'package:jaystore/utils/helpers/helper_functions.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// --- Brand Card (e.g. Nike, Adidas)
          const TBrandCard(showBorder: false),

          const SizedBox(height: TSizes.spaceBtwItems),

          /// --- Brand Top 3 Product Images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  /// --- Widget for each product image
  Widget brandTopProductImageWidget(String image, context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Expanded(
      child: TRoundedContainer(
        height: 100,
        backgroundColor: isDark ? TColors.darkenGrey : TColors.light,
        margin: const EdgeInsets.only(right: TSizes.sm),
        padding: const EdgeInsets.all(TSizes.md),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
