import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jaystore/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:jaystore/utils/constants/colors.dart';
import 'package:jaystore/utils/constants/sizes.dart';
import 'package:jaystore/utils/helpers/helper_functions.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: ( _,__) => const SizedBox(height: TSizes.spaceBtwItems),
      itemBuilder: (_,index) => TRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(TSizes.md),
        backgroundColor: dark ? TColors.dark : TColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// --- Row 1: Order Status & Date
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Iconsax.ship),
                    const SizedBox(width: TSizes.spaceBtwItems / 2),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Processing',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .apply(color: TColors.primary, fontWeightDelta: 1),
                        ),
                        Text(
                          '29 Oct, 2025',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    ),
                    
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Iconsax.arrow_right_34, size: TSizes.iconSm),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            /// --- Forward Arrow
                 /// --- Row 2: Order Info
            Row(
              children: [
                const Icon(Iconsax.tag),
                const SizedBox(width: TSizes.spaceBtwItems / 2),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium,
                    ),
                    Text(
                      '[#256F2F3]',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
                const SizedBox(width: TSizes.spaceBtwItems),
                /// --- Row 2: Order Info
                 Expanded(
                   child: Row(
                               children: [
                                 const Icon(Iconsax.calendar),
                                 const SizedBox(width: TSizes.spaceBtwItems / 2),
                                 Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shipping Date',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge,
                      ),
                      Text(
                        '3rd Nov, 2025',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                                 ),
                               ],
                             ),
                 ),
              ],
            ),         
          ],
        ),
      ),
    );
  }
}
