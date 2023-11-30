import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeNunitoOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.nunito.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 16.fSize,
      );
  static get bodyMediumABeeZeeBlack900 =>
      theme.textTheme.bodyMedium!.aBeeZee.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get bodyMediumABeeZeeGray700 =>
      theme.textTheme.bodyMedium!.aBeeZee.copyWith(
        color: appTheme.gray700,
        fontSize: 15.fSize,
      );
  static get bodyMediumArialBlack900 =>
      theme.textTheme.bodyMedium!.arial.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get bodyMediumArialPrimary =>
      theme.textTheme.bodyMedium!.arial.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get bodyMediumInterBlack900 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.8),
      );
  static get bodyMediumRobotoBluegray600 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blueGray600,
      );
  static get bodyMediumRobotoOnErrorContainer =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.64),
      );
  static get bodySmallBlack900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallRobotoBlack900 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );
  static get bodySmallRobotoOnErrorContainer =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 12.fSize,
      );
  // Display text style
  static get displaySmallNotoSansKRPrimary =>
      theme.textTheme.displaySmall!.notoSansKR.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 36.fSize,
      );
  // Headline text style
  static get headlineLargeInterBlueA700 =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        color: appTheme.blueA700,
      );
  static get headlineSmallBluegray600 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray600,
      );
  static get headlineSmallBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallGray800 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallGray80001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray80001,
      );
  static get headlineSmallInter =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        fontSize: 25.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallInterBlueA700 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.blueA700,
        fontSize: 25.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallInterBold =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        fontSize: 25.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallPrimaryBold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallPrimaryMedium =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  // Label text style
  static get labelLargeNotoSansKRGray700 =>
      theme.textTheme.labelLarge!.notoSansKR.copyWith(
        color: appTheme.gray700,
        fontSize: 13.fSize,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  // Title style
  static get titleLargeAdventPro => theme.textTheme.titleLarge!.adventPro;
  static get titleLargeArial => theme.textTheme.titleLarge!.arial.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeNotoSansKRBluegray900 =>
      theme.textTheme.titleLarge!.notoSansKR.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w900,
      );
  static get titleLargeRoboto => theme.textTheme.titleLarge!.roboto.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRoboto_1 => theme.textTheme.titleLarge!.roboto;
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumNunitoPrimary =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumRobotoPrimary =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumRobotoPurple500 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.purple500.withOpacity(0.87),
      );
  static get titleSmallAdventProBlack900 =>
      theme.textTheme.titleSmall!.adventPro.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get titleSmallNotoSansKRGray900 =>
      theme.textTheme.titleSmall!.notoSansKR.copyWith(
        color: appTheme.gray900,
        fontSize: 15.fSize,
      );
  static get titleSmallNotoSansKRPrimary =>
      theme.textTheme.titleSmall!.notoSansKR.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
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
