import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
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
  static get bodyMediumNotoSansBlack900 =>
      theme.textTheme.bodyMedium!.notoSans.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumRobotoOnErrorContainer =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyMediumRobotoPrimaryContainer =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 15.fSize,
      );
  // Headline text style
  static get headlineLargeNotoSansBlack900 =>
      theme.textTheme.headlineLarge!.notoSans.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeNotoSansBlack900SemiBold =>
      theme.textTheme.headlineLarge!.notoSans.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeNotoSansBlack900_1 =>
      theme.textTheme.headlineLarge!.notoSans.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallBluegray600 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray600,
      );
  static get headlineSmallBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w700,
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
  // Label text style
  static get labelLargeNotoSansKRGray700 =>
      theme.textTheme.labelLarge!.notoSansKR.copyWith(
        color: appTheme.gray700,
        fontSize: 13.fSize,
      );
  // Title text style
  static get titleLargeNotoSans =>
      theme.textTheme.titleLarge!.notoSans.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeNotoSansBold =>
      theme.textTheme.titleLarge!.notoSans.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeNotoSans_1 => theme.textTheme.titleLarge!.notoSans;
  static get titleLargeRoboto => theme.textTheme.titleLarge!.roboto;
  static get titleLargeRobotoBold =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInter => theme.textTheme.titleMedium!.inter.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumNunitoPrimary =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumRoboto => theme.textTheme.titleMedium!.roboto.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumRobotoBold =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallNotoSansBlack900 =>
      theme.textTheme.titleSmall!.notoSans.copyWith(
        color: appTheme.black900,
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

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
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

  TextStyle get notoSans {
    return copyWith(
      fontFamily: 'Noto Sans',
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
}
