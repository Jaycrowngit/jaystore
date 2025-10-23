import 'package:flutter/material.dart';
import 'package:jaystore/utils/constants/colors.dart';
import 'package:jaystore/utils/constants/sizes.dart';
import 'package:jaystore/utils/helpers/helper_functions.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key, 
    this.fit = BoxFit.cover,  
    this.width =56, 
    this.height =56, 
    required this.image, 
    this.overLayerColor, 
    this.backgroundColor,
    this.padding =TSizes.sm,
    this.isNetworkImage =false, 
  });
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overLayerColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
        borderRadius: BorderRadius.circular(100),
        
      ),
      child: Center(
        child: Image(
          fit: fit,
          image: isNetworkImage ? NetworkImage(image) : AssetImage(image) as ImageProvider,
          // swith image background
          
        color: overLayerColor,
        ),
      ),
    );
  }
}