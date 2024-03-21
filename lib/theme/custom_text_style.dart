import 'package:flutter/material.dart';
import 'package:prince_s_application9/core/utils/size_utils.dart';
import 'package:prince_s_application9/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 11.fSize,
      );
  // Label text style
  static get labelMediumPoppinsBlue900 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.blue900,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPoppinsGray500 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPoppinsSecondaryContainer =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPoppinsSecondaryContainer_1 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
      );
  static get labelMediumPoppinsWhiteA700 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallIndigoA700 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.indigoA700,
      );
  // Title text style
  static get titleMediumInterSecondaryContainer =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get avenirNextLTPro {
    return copyWith(
      fontFamily: 'Avenir Next LT Pro',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
