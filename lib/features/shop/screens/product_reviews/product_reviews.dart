import 'package:flutter/material.dart';
import 'package:jaystore/common/widgets/appbar/appbar.dart';
import 'package:jaystore/common/widgets/product/rating/rating_indicator.dart';
import 'package:jaystore/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:jaystore/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:jaystore/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///-- AppBar
      appBar: TAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),

      ///Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rating and reviews are verified and are free people who use the same type of devices that you are using',
              ),
              SizedBox(height: TSizes.spaceBtwItems),

              ///Overall Product Rating
             const TOverallProductRating(),
             const TRatingBarIndicator(rating: 3.5,),
             Text('13,700', style: Theme.of(context).textTheme.bodySmall,),
             const SizedBox(height: TSizes.spaceBtwSections,),

             /// User Review list
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}

