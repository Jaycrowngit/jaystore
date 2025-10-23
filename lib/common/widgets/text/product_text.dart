import 'package:flutter/material.dart';
import 'package:jaystore/utils/constants/sizes.dart';

class TProductTitleText extends StatelessWidget {
  const TProductTitleText({
    super.key, 
    required this.title, 
    this.smallSize = false, 
    this.maxLines =2, 
    this.textAlign = TextAlign.left,
  });

  final String title;
  final bool smallSize;
  final int maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.only(left: TSizes.sm),
     child: Column(
       children: [
         Text(
           title,
           style: smallSize ?Theme.of(context).textTheme.labelLarge: Theme.of(context).textTheme.titleSmall,
           overflow: TextOverflow.ellipsis,
           maxLines: maxLines,
           textAlign: textAlign,
         ),
       ],
     ),
     );
  }
}

