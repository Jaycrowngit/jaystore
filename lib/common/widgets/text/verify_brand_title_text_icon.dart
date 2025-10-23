import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jaystore/common/widgets/text/t_brand_title_text.dart';
import 'package:jaystore/utils/constants/colors.dart';
import 'package:jaystore/utils/constants/enums.dart';
import 'package:jaystore/utils/constants/sizes.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key,

    this.maxLine = 1,
    this.textColor,
    required this.title,
    this.iconColor = TColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });
  final String title;
  final int maxLine;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitleText(
            title: title,
            color:textColor,
            maxLine: maxLine,
            textAlign: textAlign,
            brandTextSize: brandTextSize,),
        ),
        const SizedBox(width: TSizes.xs),
        const Icon(
          Iconsax.verify5,
          color: TColors.primary,
          size: TSizes.iconXs,
        ),
      ],
    );
  }
}
