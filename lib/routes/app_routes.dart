import 'package:flutter/material.dart';
import 'package:magicool/presentation/iphone_13_pro_max_six_screen/iphone_13_pro_max_six_screen.dart';
import 'package:magicool/presentation/iphone_13_pro_max_seven_screen/iphone_13_pro_max_seven_screen.dart';
import 'package:magicool/presentation/iphone_13_pro_max_eight_screen/iphone_13_pro_max_eight_screen.dart';
import 'package:magicool/presentation/login_screen/login_screen.dart';
import 'package:magicool/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:magicool/presentation/splash_screen/splash_screen.dart';
import 'package:magicool/presentation/ui_login_screen/ui_login_screen.dart';
import 'package:magicool/presentation/k7_screen/k7_screen.dart';
import 'package:magicool/presentation/container_screen/container_screen.dart';
import 'package:magicool/presentation/two_screen/two_screen.dart';
import 'package:magicool/presentation/one_screen/one_screen.dart';
import 'package:magicool/presentation/k12_screen/k12_screen.dart';
import 'package:magicool/presentation/k13_screen/k13_screen.dart';
import 'package:magicool/presentation/info_screen/info_screen.dart';
import 'package:magicool/presentation/k15_screen/k15_screen.dart';
import 'package:magicool/presentation/two1_screen/two1_screen.dart';
import 'package:magicool/presentation/one1_screen/one1_screen.dart';
import 'package:magicool/presentation/x_screen/x_screen.dart';
import 'package:magicool/presentation/k19_screen/k19_screen.dart';
import 'package:magicool/presentation/k21_screen/k21_screen.dart';
import 'package:magicool/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone13ProMaxSixScreen = '/iphone_13_pro_max_six_screen';

  static const String iphone13ProMaxSevenScreen =
      '/iphone_13_pro_max_seven_screen';

  static const String iphone13ProMaxEightScreen =
      '/iphone_13_pro_max_eight_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String splashScreen = '/splash_screen';

  static const String uiLoginScreen = '/ui_login_screen';

  static const String k7Screen = '/k7_screen';

  static const String k8Page = '/k8_page';

  static const String containerScreen = '/container_screen';

  static const String twoScreen = '/two_screen';

  static const String oneScreen = '/one_screen';

  static const String k12Screen = '/k12_screen';

  static const String k13Screen = '/k13_screen';

  static const String infoScreen = '/info_screen';

  static const String k15Screen = '/k15_screen';

  static const String two1Screen = '/two1_screen';

  static const String one1Screen = '/one1_screen';

  static const String xScreen = '/x_screen';

  static const String k19Screen = '/k19_screen';

  static const String k20Page = '/k20_page';

  static const String k21Screen = '/k21_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    iphone13ProMaxSixScreen: (context) => Iphone13ProMaxSixScreen(),
    iphone13ProMaxSevenScreen: (context) => Iphone13ProMaxSevenScreen(),
    iphone13ProMaxEightScreen: (context) => Iphone13ProMaxEightScreen(),
    loginScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    splashScreen: (context) => SplashScreen(),
    uiLoginScreen: (context) => UiLoginScreen(),
    k7Screen: (context) => K7Screen(),
    containerScreen: (context) => ContainerScreen(),
    twoScreen: (context) => TwoScreen(),
    oneScreen: (context) => OneScreen(),
    k12Screen: (context) => K12Screen(),
    k13Screen: (context) => K13Screen(),
    infoScreen: (context) => InfoScreen(),
    k15Screen: (context) => K15Screen(),
    two1Screen: (context) => Two1Screen(),
    one1Screen: (context) => One1Screen(),
    xScreen: (context) => XScreen(),
    k19Screen: (context) => K19Screen(),
    k21Screen: (context) => K21Screen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
