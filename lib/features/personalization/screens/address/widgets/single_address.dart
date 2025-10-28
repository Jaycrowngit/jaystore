import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jaystore/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:jaystore/utils/constants/colors.dart';
import 'package:jaystore/utils/constants/sizes.dart';
import 'package:jaystore/utils/helpers/helper_functions.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
                width: double.infinity,
                showBorder: true,
                padding: EdgeInsets.all(TSizes.md),
                backgroundColor: selectedAddress ? TColors.primary.withOpacity(0.5) : Colors.transparent,
                borderColor: selectedAddress ? Colors.transparent : dark ? TColors.darkenGrey : TColors.grey,
                margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
                child: Stack(
                  children: [
                    Positioned(
                      right: 5,
                      top: 0,
                      child: Icon(
                        selectedAddress ? Iconsax.tick_circle5 : null, 
                        color: selectedAddress ? dark ? TColors.light : TColors.dark.withOpacity(0.6) : null,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'John Jay',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: TSizes.sm /2),
                          const Text('(+234) 809 119 0946',maxLines: 1,overflow: TextOverflow.ellipsis,),
                          const SizedBox(height: TSizes.sm /2),
                          const Text(
                          '82546 Timmy covers, South liana, maine, 87665, USA',softWrap: true, ),
                      ],
                    ),
                  ],
                ),
              );
  }
}