import 'package:flutter/material.dart';
import 'package:jaystore/common/widgets/appbar/appbar.dart';
import 'package:jaystore/features/shop/screens/order/widgets/list_order.dart';
import 'package:jaystore/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// --- AppBar
       appBar: TAppBar(title: Text('My Order', style: Theme.of(context).textTheme.headlineSmall)),
       body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        ///-- Order
        child: TOrderListItems(),
        
        )
    );
  }
}