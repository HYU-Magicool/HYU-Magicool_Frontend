import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeNunitoBlack900 =>
      theme.textTheme.bodyLarge!.nunito.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get bodyMediumABeeZeeGray700 =>
      theme.textTheme.bodyMedium!.aBeeZee.copyWith(
        color: appTheme.gray700,
        fontSize: 15.fSize,
      );
  static get bodyMediumArialOnError =>
      theme.textTheme.bodyMedium!.arial.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 15.fSize,
      );
  static get bodyMediumArialPrimary =>
      theme.textTheme.bodyMedium!.arial.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 15.fSize,
      );
  static get bodyMediumInterPrimary =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.8),
      );
  static get bodyMediumRobotoBluegray600 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blueGray600,
      );
  static get bodyMediumRobotoPrimaryContainer =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodySmallPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.64),
      );
  static get bodySmallRobotoPrimary =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 12.fSize,
      );
  static get bodySmallRobotoPrimaryContainer =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 12.fSize,
      );
  // Display text style
  static get displaySmallNotoSansKROnError =>
      theme.textTheme.displaySmall!.notoSansKR.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 36.fSize,
      );
  // Headline text style
  static get headlineLargeInterBlueA700 =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        color: appTheme.blueA700,
      );
  static get headlineSmallBlueA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueA700,
      );
  static get headlineSmallRoboto =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        fontSize: 24.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallRobotoBluegray600 =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        color: appTheme.blueGray600,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallRobotoGray800 =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        color: appTheme.gray800,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallRobotoGray80001 =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        color: appTheme.gray80001,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallRobotoOnError =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 24.fSize,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallRobotoOnError24 =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 24.fSize,
      );
  // Label text style
  static get labelLargeAbhayaLibreIndigoA400 =>
      theme.textTheme.labelLarge!.abhayaLibre.copyWith(
        color: appTheme.indigoA400,
        fontSize: 12.fSize,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeNotoSansKRBluegray900 =>
      theme.textTheme.titleLarge!.notoSansKR.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumInterGray80001 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRoboto => theme.textTheme.titleMedium!.roboto.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRobotoPurple500 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.purple500.withOpacity(0.87),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallNotoSansKRGray900 =>
      theme.textTheme.titleSmall!.notoSansKR.copyWith(
        color: appTheme.gray900,
      );
  static get titleSmallNotoSansKROnError =>
      theme.textTheme.titleSmall!.notoSansKR.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get titleSmallRobotoOnError =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 14.fSize,
      );
  static get titleSmallRobotoPrimaryContainer =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 14.fSize,
      );
}

extension on TextStyle {
  TextStyle get arial {
    return copyWith(
      fontFamily: 'Arial',
    );
  }

  TextStyle get notoSansKR {
    return copyWith(
      fontFamily: 'Noto Sans KR',
    );
  }

  TextStyle get adventPro {
    return copyWith(
      fontFamily: 'Advent Pro',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get abhayaLibre {
    return copyWith(
      fontFamily: 'Abhaya Libre',
    );
  }

  TextStyle get aBeeZee {
    return copyWith(
      fontFamily: 'ABeeZee',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }
}
