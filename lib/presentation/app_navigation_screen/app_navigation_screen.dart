import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login_page ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Signup_page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signupPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login_page_input ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginPageInputScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home_tab_택배 없음 - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home_tab_택배 예정",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeTab1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home_tab_택배 예정_스피커연동",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeTab2Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home_tab_스피커 활성화",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeTab3Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home_tab_배송 예정 info",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeTabInfoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Device_tab_냉장고 등록",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.deviceTabScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "디바이스 탭 - 연결 X",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.xScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "디바이스 탭 - 연결 O",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.oScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "리포트 탭",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.k14Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "마이페이지 탭",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.k15Screen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
