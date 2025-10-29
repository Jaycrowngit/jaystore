import 'package:flutter/material.dart';
import 'package:jaystore/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:jaystore/utils/constants/colors.dart';
import 'package:jaystore/utils/constants/sizes.dart';
import 'package:jaystore/utils/helpers/helper_functions.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
     showBorder: true,
     backgroundColor: dark ? TColors.dark : TColors.white,
     padding: const EdgeInsets.only(top: TSizes.sm, bottom: TSizes.sm, right: TSizes.sm, left: TSizes.sm),
     child: Row(
       children: [
         /// --- TextField
         Flexible(
           child: TextFormField(
             decoration: const InputDecoration(
               hintText: 'Have a promo code? Enter here',
               border: InputBorder.none,
               enabledBorder: InputBorder.none,
               focusedBorder: InputBorder.none,
               errorBorder: InputBorder.none,
               disabledBorder: InputBorder.none,
             ),
           ),
         ),
         ///--- Button
         SizedBox(width:70,child: ElevatedButton(onPressed: (){},
          style:ElevatedButton.styleFrom(foregroundColor: dark ? TColors.white.withOpacity(0.5) : TColors.dark.withOpacity(0.5),
          backgroundColor: Colors.grey.withOpacity(0.2),
          side: BorderSide(color: Colors.grey.withOpacity(0.1),)
          ),
         child:Text('Apply'),
         ),
         ),
       ],
     ),
    );
  }
}