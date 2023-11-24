import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/presentation/k25_page/k25_page.dart';
import 'package:magicool/presentation/k31_page/k31_page.dart';
import 'package:magicool/widgets/custom_bottom_bar.dart';

class K32Screen extends StatelessWidget {
  K32Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 48.v),
              _buildThirteen(context),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 9.h),
                child: _buildToastVariant5(context),
              ),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 9.h),
                child: _buildToastVariant5(context),
              ),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 9.h),
                child: _buildToastVariant5(context),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirteen(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillBluegray100,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSystemSettingsLine,
            height: 18.v,
            width: 24.h,
            margin: EdgeInsets.only(top: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 1.v,
            ),
            child: Text(
              "설정",
              style: CustomTextStyles.bodySmallRobotoPrimary,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildToastVariant5(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillYellow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder9,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLock,
            height: 23.adaptSize,
            width: 23.adaptSize,
            margin: EdgeInsets.only(bottom: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 5.v,
              bottom: 5.v,
            ),
            child: Text(
              "  냉장고 보안 비밀번호 설정",
              style: CustomTextStyles.bodySmallRobotoPrimaryContainer,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Wallet:
        return AppRoutes.k25Page;
      case BottomBarEnum.Analysis:
        return "/";
      case BottomBarEnum.Useronprimarycontainer:
        return AppRoutes.k31Page;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.k25Page:
        return K25Page();
      case AppRoutes.k31Page:
        return K31Page();
      default:
        return DefaultWidget();
    }
  }
}
