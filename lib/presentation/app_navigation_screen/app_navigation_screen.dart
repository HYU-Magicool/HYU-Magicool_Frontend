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
                          screenTitle: "iPhone 13 Pro Max - Six",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - Seven",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - Eight",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login_확정 ",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "UI/Login",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "임시 로고",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "메인 탭 - Container",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "메인 탭(확정) Two",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "메인 탭(확정) One",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "메인 탭(확정)",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "메인 탭(확정)_스피커 이용",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "메인 탭(확정)_배송 예정 info",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "메인 탭(확정)_알림🔔 클릭시",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "메인 탭 Two",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "메인 탭 One",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "디바이스 탭 - 연결 X",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "디바이스 탭",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "마이페이지 탭",
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
  }) {
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
