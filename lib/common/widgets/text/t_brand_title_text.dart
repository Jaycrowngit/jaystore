import 'package:flutter/material.dart';
import 'package:jaystore/utils/constants/enums.dart';

class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText({
    super.key,  
    this.color , 
    required this.title,
    this.maxLine =1,
    this.textAlign =TextAlign.center,
    this.brandTextSize =TextSizes.small, 
     
    
  });
  final String title;
  final int maxLine;
  final Color? color;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      // Check which brand style is required and set it
    style: brandTextSize == TextSizes.small 
    ? Theme.of(context).textTheme.labelMedium!.apply(color: color) 
    : brandTextSize == TextSizes.medium 
    ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
    : brandTextSize == TextSizes.large 
    ? Theme.of(context).textTheme.titleLarge!.apply(color: color) 
    :Theme.of(context).textTheme.bodyMedium!.apply(color: color) 
    );
  }
  }