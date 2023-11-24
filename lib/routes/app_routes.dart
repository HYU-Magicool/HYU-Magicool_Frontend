import 'package:flutter/material.dart';
import 'package:magicool/presentation/one_screen/one_screen.dart';
import 'package:magicool/presentation/ten_screen/ten_screen.dart';
import 'package:magicool/presentation/eleven_screen/eleven_screen.dart';
import 'package:magicool/presentation/ui_title_screen/ui_title_screen.dart';
import 'package:magicool/presentation/iphone_13_pro_max_one_screen/iphone_13_pro_max_one_screen.dart';
import 'package:magicool/presentation/iphone_13_pro_max_two_screen/iphone_13_pro_max_two_screen.dart';
import 'package:magicool/presentation/iphone_13_pro_max_three_screen/iphone_13_pro_max_three_screen.dart';
import 'package:magicool/presentation/iphone_13_pro_max_six_screen/iphone_13_pro_max_six_screen.dart';
import 'package:magicool/presentation/iphone_13_pro_max_seven_screen/iphone_13_pro_max_seven_screen.dart';
import 'package:magicool/presentation/iphone_13_pro_max_eight_screen/iphone_13_pro_max_eight_screen.dart';
import 'package:magicool/presentation/login_one_screen/login_one_screen.dart';
import 'package:magicool/presentation/login_screen/login_screen.dart';
import 'package:magicool/presentation/two1_screen/two1_screen.dart';
import 'package:magicool/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:magicool/presentation/splash_screen/splash_screen.dart';
import 'package:magicool/presentation/ui_login_screen/ui_login_screen.dart';
import 'package:magicool/presentation/k24_screen/k24_screen.dart';
import 'package:magicool/presentation/container_screen/container_screen.dart';
import 'package:magicool/presentation/one1_screen/one1_screen.dart';
import 'package:magicool/presentation/k28_screen/k28_screen.dart';
import 'package:magicool/presentation/one2_screen/one2_screen.dart';
import 'package:magicool/presentation/iphone_12_mini_screen_replace_this_screen/iphone_12_mini_screen_replace_this_screen.dart';
import 'package:magicool/presentation/k32_screen/k32_screen.dart';
import 'package:magicool/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String oneScreen = '/one_screen';

  static const String tenScreen = '/ten_screen';

  static const String elevenScreen = '/eleven_screen';

  static const String uiTitleScreen = '/ui_title_screen';

  static const String iphone13ProMaxOneScreen = '/iphone_13_pro_max_one_screen';

  static const String iphone13ProMaxTwoScreen = '/iphone_13_pro_max_two_screen';

  static const String iphone13ProMaxThreeScreen =
      '/iphone_13_pro_max_three_screen';

  static const String iphone13ProMaxSixScreen = '/iphone_13_pro_max_six_screen';

  static const String iphone13ProMaxSevenScreen =
      '/iphone_13_pro_max_seven_screen';

  static const String iphone13ProMaxEightScreen =
      '/iphone_13_pro_max_eight_screen';

  static const String loginOneScreen = '/login_one_screen';

  static const String loginScreen = '/login_screen';

  static const String two1Screen = '/two1_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String splashScreen = '/splash_screen';

  static const String uiLoginScreen = '/ui_login_screen';

  static const String k24Screen = '/k24_screen';

  static const String k25Page = '/k25_page';

  static const String containerScreen = '/container_screen';

  static const String one1Screen = '/one1_screen';

  static const String k28Screen = '/k28_screen';

  static const String one2Screen = '/one2_screen';

  static const String iphone12MiniScreenReplaceThisScreen =
      '/iphone_12_mini_screen_replace_this_screen';

  static const String k31Page = '/k31_page';

  static const String k32Screen = '/k32_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    oneScreen: (context) => OneScreen(),
    tenScreen: (context) => TenScreen(),
    elevenScreen: (context) => ElevenScreen(),
    uiTitleScreen: (context) => UiTitleScreen(),
    iphone13ProMaxOneScreen: (context) => Iphone13ProMaxOneScreen(),
    iphone13ProMaxTwoScreen: (context) => Iphone13ProMaxTwoScreen(),
    iphone13ProMaxThreeScreen: (context) => Iphone13ProMaxThreeScreen(),
    iphone13ProMaxSixScreen: (context) => Iphone13ProMaxSixScreen(),
    iphone13ProMaxSevenScreen: (context) => Iphone13ProMaxSevenScreen(),
    iphone13ProMaxEightScreen: (context) => Iphone13ProMaxEightScreen(),
    loginOneScreen: (context) => LoginOneScreen(),
    loginScreen: (context) => LoginScreen(),
    two1Screen: (context) => Two1Screen(),
    signUpScreen: (context) => SignUpScreen(),
    splashScreen: (context) => SplashScreen(),
    uiLoginScreen: (context) => UiLoginScreen(),
    k24Screen: (context) => K24Screen(),
    containerScreen: (context) => ContainerScreen(),
    one1Screen: (context) => One1Screen(),
    k28Screen: (context) => K28Screen(),
    one2Screen: (context) => One2Screen(),
    iphone12MiniScreenReplaceThisScreen: (context) =>
        Iphone12MiniScreenReplaceThisScreen(),
    k32Screen: (context) => K32Screen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
