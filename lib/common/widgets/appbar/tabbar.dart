import 'package:flutter/material.dart';
import 'package:jaystore/utils/constants/colors.dart';
import 'package:jaystore/utils/devices/device_utility.dart';
import 'package:jaystore/utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({
    super.key, required this.Tabs,
  });

  final List<Widget>Tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color : dark ? TColors.black : TColors.white,
      child: TabBar(
        tabs:Tabs,
        isScrollable: true,
        indicatorColor: TColors.primary,
        labelColor: dark ? TColors.white : TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
        ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}

