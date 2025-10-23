import 'package:flutter/material.dart';
import 'package:jaystore/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:jaystore/common/widgets/images/t_circular_image.dart';
import 'package:jaystore/common/widgets/text/verify_brand_title_text_icon.dart';
import 'package:jaystore/utils/constants/colors.dart';
import 'package:jaystore/utils/constants/enums.dart';
import 'package:jaystore/utils/constants/image_strings.dart';
import 'package:jaystore/utils/constants/sizes.dart';
import 'package:jaystore/utils/helpers/helper_functions.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key, 
    required this.showBorder, 
    this.onTap,
  });
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onTap,
    /// Container design
    child: TRoundedContainer(
      padding:const EdgeInsets.all(TSizes.sm),
      showBorder: showBorder,
      backgroundColor: Colors.transparent,
      child: Row(
        children: [
          /// ---- Product Icons
          Flexible(
            child: TCircularImage(
              isNetworkImage: false,
              image: TImages.clothIcon,
              backgroundColor: Colors.transparent,
              overLayerColor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.dark,
              ),
          ),
            const SizedBox(height: TSizes.spaceBtwItems /2),
    
            /// --- Text
              Expanded(
                     child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                        const TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.large,),
                       Text(
                            '256 product', 
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.labelMedium,
                       ),
                       ],
                     ),
                   ),
        
        ],
        ),
    ),
                        );
  }
}

