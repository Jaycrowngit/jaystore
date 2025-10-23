import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jaystore/common/widgets/appbar/appbar.dart';
import 'package:jaystore/common/widgets/custom_shapes/curved_shape/curved_shape_widget.dart';
import 'package:jaystore/common/widgets/icon/t_circular_icon.dart';
import 'package:jaystore/common/widgets/images/t_rounded_image.dart';
import 'package:jaystore/utils/constants/colors.dart';
import 'package:jaystore/utils/constants/image_strings.dart';
import 'package:jaystore/utils/constants/sizes.dart';
import 'package:jaystore/utils/helpers/helper_functions.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkenGrey : TColors.light,
        child: Stack(
          children: [
            /// main large image
            SizedBox(
              height:400,
              child:  Padding(
                 padding: const EdgeInsets.all(TSizes.productImageRadius * 2),
                 child: Center(child: Image(image: AssetImage(TImages.productImage5))),
               ),
               ),
    
               /// Image Slider
               Positioned(
                right: 0,
                bottom: 30,
                left: TSizes.defaultSpace /2.5,
                 child: SizedBox(
                  height: 80,
                   child: ListView.separated(
                     separatorBuilder: (_, __) => const SizedBox(width: TSizes.spaceBtwItems,),
                     itemCount: 6,
                     shrinkWrap: true,
                     scrollDirection: Axis.horizontal,
                     physics: AlwaysScrollableScrollPhysics(),
                     itemBuilder: (_, index) => TRoundedImage(width: 80,
                     backgroundColor: dark ? TColors.dark: TColors.white,
                     border: Border.all(color: TColors.primary),
                     padding: const EdgeInsets.all(TSizes.sm),
                     imageUrl: TImages.productImage3),
                      
                   ),
                 ),
               ),
    
               ///AppBar Icons
               TAppBar(
                showBackArrow: true,
                actions: [TCircularIcon(icon: Iconsax.heart5,color: Colors.red,)],
               ),
          ],
        ),
      ),
    );
  }
}