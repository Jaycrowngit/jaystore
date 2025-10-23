import 'package:flutter/material.dart';
import 'package:jaystore/utils/constants/colors.dart';

/// A collection of reusable shadow styles used across the app UI.
class TShadowStyle {
  /// Soft vertical drop shadow (for cards, product tiles, etc.)
  static final BoxShadow verticalProductShadow = BoxShadow(
    color: TColors.darkGrey.withOpacity(0.10),
    blurRadius: 6,
    spreadRadius: 1,
    offset: const Offset(0, 2),
  );

  /// Horizontal drop shadow (used for horizontally scrolling elements)
  static final BoxShadow horizontalProductShadow = BoxShadow(
    color: TColors.darkGrey.withOpacity(0.10),
    blurRadius: 8,
    spreadRadius: 1,
    offset: const Offset(2, 0),
  );
}
