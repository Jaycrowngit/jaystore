import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaystore/common/widgets/appbar/appbar.dart';
import 'package:jaystore/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:jaystore/common/widgets/product/cart/coupon_widget.dart';
import 'package:jaystore/common/widgets/success_screen/success_screen.dart';
import 'package:jaystore/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:jaystore/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:jaystore/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:jaystore/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:jaystore/navigation_bar.dart';
import 'package:jaystore/utils/constants/colors.dart';
import 'package:jaystore/utils/constants/image_strings.dart';
import 'package:jaystore/utils/constants/sizes.dart';
import 'package:jaystore/utils/helpers/helper_functions.dart';

class TCheckoutScreen extends StatelessWidget {
  const TCheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// --- Cart Items
              const TCartItems(showAddRemoveButton: false),
              const SizedBox(height: TSizes.spaceBtwSections /2),

              /// --- Coupon Text Field
              const TCouponCode(),
              const SizedBox(height: TSizes.spaceBtwSections/2),

              /// --- Billing Section
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.dark : TColors.white,
                child: Column(
                  children: [
                    /// Pricing Details
                    const TBillingAmountSection(),
                    const SizedBox(height: TSizes.spaceBtwItems /2),

                    /// Divider
                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwItems /2),

                    /// Payment Method Placeholder
                    TBillingPaymentSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    /// Address Placeholder
                    TBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),


      ///-- checkout and Success Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => SuccessScreen(
            image: TImages.successfulPaymentIcon,
            title: 'Payment Successful!',
            subTitle: 'Your items will be shipped soon!', 
            onPressed: () => Get.off(() => const NavigationMenu()),
          )
             ),
          child: Text('Checkout \$2560')),
      ),
    
    );
  }
}
