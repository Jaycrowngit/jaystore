import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaystore/common/widgets/appbar/appbar.dart';
import 'package:jaystore/common/widgets/appbar/tabbar.dart';
import 'package:jaystore/common/widgets/custom_shapes/container/search_container.dart';
import 'package:jaystore/common/widgets/layouts/grid_layouts.dart';
import 'package:jaystore/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:jaystore/common/widgets/brands/brand_card.dart';
import 'package:jaystore/common/widgets/text/section_heading.dart';
import 'package:jaystore/features/shop/screens/brands/all_brand.dart';
import 'package:jaystore/features/shop/screens/store/widgets/category_tab.dart';
import 'package:jaystore/utils/constants/colors.dart';
import 'package:jaystore/utils/constants/sizes.dart';
import 'package:jaystore/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(onPressed: (){})
          ],
        ),
        body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
              expandedHeight: 440,
              
      
      
              flexibleSpace: Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child:ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    /// Search Bar
                    SizedBox(height: TSizes.spaceBtwItems),
                    TSearchContainer(text: 'Search in Store', showBackground: false, showBorder: true, padding: EdgeInsets.zero,),
                    SizedBox(height: TSizes.spaceBtwItems),
      
      
                    /// ---Features Brands
                    TSectionHeading(title: 'Featured Brands', onPressed:() => Get.to(()=> const AllBrandsScreen())),
                    const SizedBox(height: TSizes.spaceBtwItems /1.5),
                    /// Grid Layout
                    TGridLayout(itemCount: 4, mainAxisExtent:80,  itemBuilder: (_, index) {
                      /// TBrandcard 
                      return TBrandCard(showBorder: true,);
                    
                    }
                    ),
                  ],
                ) ,
                ),
                /// TABS --------
                bottom: const TTabBar(
                 Tabs: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furnitures')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics')),
                ],
                ),
            ),
          ];
        }, 
        /// Body displaying the brand and category market
        body: const TabBarView(
          children: [TCategoryTab(), TCategoryTab(),TCategoryTab(), TCategoryTab(),TCategoryTab(),
]),
      ),
      ),
    );
  }
}

