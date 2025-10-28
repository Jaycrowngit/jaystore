
import 'package:flutter/material.dart';
import 'package:jaystore/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:jaystore/common/widgets/product/rating/rating_indicator.dart';
import 'package:jaystore/utils/constants/colors.dart';
import 'package:jaystore/utils/constants/image_strings.dart';
import 'package:jaystore/utils/constants/sizes.dart';
import 'package:jaystore/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar( backgroundImage: AssetImage(TImages.userProfileImage2)),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text('John Jaycrown', style: Theme.of(context).textTheme.titleLarge),
            
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),


        /// Reviews
        Row(
          children: [
            const TRatingBarIndicator(rating: 4.5),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('01 Nov,2025', style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        ReadMoreText(
          'The user interface of the app is quite intuitive, i was able ro navigate and make purchases seamlessly, The payment interface and navigation is flawless, also, the app response to internet is fast and unbelievable. Great Job guys, you are the best   ',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color:TColors.primary),
          lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color:TColors.primary),
          ),

          const SizedBox(height: TSizes.spaceBtwItems),

          /// Company Review
          TRoundedContainer(
            backgroundColor: dark ? TColors.darkenGrey: TColors.grey,
            child: Padding(
              padding: EdgeInsets.all(TSizes.md),
              child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("JayStore", style: Theme.of(context).textTheme.titleMedium),
                    Text('02 Oct, 2025', style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                const ReadMoreText(
                            'Thank you for your feedback, we are set to bring convinency to your door step. keep enjoying the app and await the new features coming. We give the best experience   ',
                            trimLines: 2,
                            trimMode: TrimMode.Line,
                            trimExpandedText: 'show less',
                            trimCollapsedText: 'show more',
                            moreStyle:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color:TColors.primary),
                            lessStyle:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color:TColors.primary),
               ),
              ],  
              ),),
          ),
          const SizedBox(height: TSizes.spaceBtwSections,)
      ],
    );
  }
}