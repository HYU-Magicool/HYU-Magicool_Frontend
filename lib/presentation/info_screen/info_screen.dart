import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/presentation/k20_page/k20_page.dart';
import 'package:magicool/presentation/k8_page/k8_page.dart';
import 'package:magicool/widgets/app_bar/appbar_leading_image.dart';
import 'package:magicool/widgets/app_bar/appbar_title.dart';
import 'package:magicool/widgets/app_bar/custom_app_bar.dart';
import 'package:magicool/widgets/custom_bottom_bar.dart';
import 'package:magicool/widgets/custom_elevated_button.dart';

class InfoScreen extends StatelessWidget {
  InfoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          height: 597.v,
          width: double.maxFinite,
          padding: EdgeInsets.all(23.h),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 163.h,
                  margin: EdgeInsets.only(
                    left: 36.h,
                    top: 129.v,
                  ),
                  child: Text(
                    "[쿠팡]  10 : 00 ~ 11 : 00 도착예정입니다.  ",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.headlineSmallPrimary.copyWith(
                      height: 1.08,
                    ),
                  ),
                ),
              ),
              _buildGeneric(context),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(right: 3.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 59.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconOnerrorcontainer16x16,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 11.v,
          bottom: 11.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "배송 예정",
      ),
    );
  }

  /// Section Widget
  Widget _buildGeneric(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(right: 5.h),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.fillOnErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Text(
                "오늘의 배송 예정 택배",
                style: CustomTextStyles.headlineSmallPrimary,
              ),
            ),
            SizedBox(height: 1.v),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Text(
                "11월 20일 수요일 ",
                style: CustomTextStyles.headlineSmallBluegray600,
              ),
            ),
            SizedBox(height: 15.v),
            Container(
              width: 292.h,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 34.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder9,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 45.v),
                  SizedBox(
                    width: 163.h,
                    child: Text(
                      "[쿠팡]  10 : 00 ~ 11 : 00 도착예정입니다.  ",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.headlineSmallPrimary.copyWith(
                        height: 1.08,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.v),
            CustomElevatedButton(
              height: 32.v,
              width: 76.h,
              text: "보러가기",
              buttonStyle: CustomButtonStyles.fillIndigo,
              buttonTextStyle: CustomTextStyles.titleSmallPrimary,
              alignment: Alignment.center,
            ),
            SizedBox(height: 2.v),
          ],
        ),
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

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Wallet:
        return AppRoutes.k8Page;
      case BottomBarEnum.Analysis:
        return "/";
      case BottomBarEnum.User:
        return AppRoutes.k20Page;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.k8Page:
        return K8Page();
      case AppRoutes.k20Page:
        return K20Page();
      default:
        return DefaultWidget();
    }
  }
}
