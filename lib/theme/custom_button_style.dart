import 'dart:ui';
import 'package:magicool/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray100,
      );
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.h),
        ),
      );
  static ButtonStyle get fillIndigo => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigo400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
      );
  static ButtonStyle get fillOnErrorContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onErrorContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlack => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
        shadowColor: appTheme.black900.withOpacity(0.25),
        elevation: 4,
      );
  static ButtonStyle get outlineBlueA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueA400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.h),
        ),
        shadowColor: appTheme.blueA400.withOpacity(0.15),
        elevation: 2,
      );
  static ButtonStyle get outlineGray => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.gray900,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
