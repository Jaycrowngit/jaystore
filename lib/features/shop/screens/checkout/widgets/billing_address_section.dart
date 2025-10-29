import 'package:flutter/material.dart';
import 'package:jaystore/common/widgets/text/section_heading.dart';
import 'package:jaystore/utils/constants/sizes.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: (){}),
        Text('Jay Store', style: Theme.of(context).textTheme.bodyLarge),

        const SizedBox(height: TSizes.spaceBtwItems/2),
        Row(
          children: [
            const Icon(Icons.phone, color:Colors.grey, size:16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('(+234) 809 119 0946', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            const Icon(Icons.location_history, color:Colors.grey, size:16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('South Liana, Maine 87695, USA', style: Theme.of(context).textTheme.bodyMedium, softWrap: true),
          ],
        ),
      ],
    );
  }
}