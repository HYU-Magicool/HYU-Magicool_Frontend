import 'package:flutter/material.dart';
import 'package:magicool/presentation/splash_screen/splash_screen.dart';
import 'package:magicool/presentation/login_page_screen/login_page_screen.dart';
import 'package:magicool/presentation/signup_page_screen/signup_page_screen.dart';
import 'package:magicool/presentation/login_page_input_screen/login_page_input_screen.dart';
import 'package:magicool/presentation/home_tab_container_screen/home_tab_container_screen.dart';
import 'package:magicool/presentation/home_tab1_screen/home_tab1_screen.dart';
import 'package:magicool/presentation/home_tab2_screen/home_tab2_screen.dart';
import 'package:magicool/presentation/home_tab3_screen/home_tab3_screen.dart';
import 'package:magicool/presentation/home_tab_info_screen/home_tab_info_screen.dart';
import 'package:magicool/presentation/device_tab_screen/device_tab_screen.dart';
import 'package:magicool/presentation/x_screen/x_screen.dart';
import 'package:magicool/presentation/o_screen/o_screen.dart';
import 'package:magicool/presentation/k14_screen/k14_screen.dart';
import 'package:magicool/presentation/k15_screen/k15_screen.dart';
import 'package:magicool/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String signupPageScreen = '/signup_page_screen';

  static const String loginPageInputScreen = '/login_page_input_screen';

  static const String homeTabPage = '/home_tab_page';

  static const String homeTabContainerScreen = '/home_tab_container_screen';

  static const String homeTab1Screen = '/home_tab1_screen';

  static const String homeTab2Screen = '/home_tab2_screen';

  static const String homeTab3Screen = '/home_tab3_screen';

  static const String homeTabInfoScreen = '/home_tab_info_screen';

  static const String deviceTabScreen = '/device_tab_screen';

  static const String xScreen = '/x_screen';

  static const String oScreen = '/o_screen';

  static const String onePage = '/one_page';

  static const String k14Screen = '/k14_screen';

  static const String k15Screen = '/k15_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    loginPageScreen: (context) => LoginPageScreen(),
    signupPageScreen: (context) => SignupPageScreen(),
    loginPageInputScreen: (context) => LoginPageInputScreen(),
    homeTabContainerScreen: (context) => HomeTabContainerScreen(),
    homeTab1Screen: (context) => HomeTab1Screen(),
    homeTab2Screen: (context) => HomeTab2Screen(),
    homeTab3Screen: (context) => HomeTab3Screen(),
    homeTabInfoScreen: (context) => HomeTabInfoScreen(),
    deviceTabScreen: (context) => DeviceTabScreen(),
    xScreen: (context) => XScreen(),
    oScreen: (context) => OScreen(),
    k14Screen: (context) => K14Screen(),
    k15Screen: (context) => K15Screen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
