import 'package:flutter/material.dart';
import 'package:jaystore/features/shop/screens/product_reviews/widgets/progress_indicator.dart';

class TOverallProductRating extends StatelessWidget {
  const TOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3,
          child: Text(
            '3.5',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              TRatingProgressIndicator(text: '5', value: 0.9,),
              TRatingProgressIndicator(text: '4', value: 0.8,),
              TRatingProgressIndicator(text: '3', value: 0.6,),
              TRatingProgressIndicator(text: '2', value: 0.5,),
              TRatingProgressIndicator(text: '1', value: 0.2,),
            ],                   
          ),
        ),
      ],
    );
  }
}

