import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/presentation/home_tab_page/home_tab_page.dart';
import 'package:magicool/presentation/one_page/one_page.dart';
import 'package:magicool/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeTabContainerScreen extends StatelessWidget {
  HomeTabContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homeTabPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(right: 3.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeTabPage:
        return HomeTabPage();
      case AppRoutes.onePage:
        return OnePage();
      default:
        return HomeTabPage();
    }
  }
}
