import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/presentation/k20_page/k20_page.dart';
import 'package:magicool/presentation/k8_page/k8_page.dart';
import 'package:magicool/widgets/app_bar/appbar_title_image.dart';
import 'package:magicool/widgets/app_bar/appbar_trailing_image.dart';
import 'package:magicool/widgets/app_bar/custom_app_bar.dart';
import 'package:magicool/widgets/custom_bottom_bar.dart';
import 'package:magicool/widgets/custom_icon_button.dart';
import 'package:magicool/widgets/custom_outlined_button.dart';

class OneScreen extends StatelessWidget {
  OneScreen({Key? key})
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
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 2.h,
            vertical: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildImageContainer(context),
              SizedBox(height: 16.v),
              CustomOutlinedButton(
                text: "보러가기",
                margin: EdgeInsets.only(
                  left: 16.h,
                  right: 21.h,
                ),
                alignment: Alignment.center,
              ),
              SizedBox(height: 35.v),
              Padding(
                padding: EdgeInsets.only(left: 22.h),
                child: Text(
                  "🔊 음성 인식 서비스",
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleLargeArial,
                ),
              ),
              SizedBox(height: 18.v),
              _buildMediaMicLine(context),
              SizedBox(height: 5.v),
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
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgImage14,
        margin: EdgeInsets.only(left: 11.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMediaNotificationsLine,
          margin: EdgeInsets.fromLTRB(17.h, 3.v, 31.h, 21.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildImageContainer(BuildContext context) {
    return SizedBox(
      height: 216.v,
      width: 366.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 184.v,
              width: 366.h,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: appTheme.blueGray50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder9,
              ),
              child: Container(
                height: 200.v,
                width: 334.h,
                padding: EdgeInsets.all(8.h),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder9,
                ),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgWomanPowerAlone,
                      height: 184.v,
                      width: 318.h,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 18.h,
                          bottom: 4.v,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "안녕하세요! ",
                                    style: theme.textTheme.headlineSmall,
                                  ),
                                  TextSpan(
                                    text: "정유빈 님,",
                                    style: CustomTextStyles.headlineSmallBold,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "11월 20일 수요일",
                              style: CustomTextStyles.headlineSmallBluegray600,
                            ),
                            SizedBox(height: 16.v),
                            SizedBox(
                              width: 232.h,
                              child: Text(
                                "오늘 배송 예정인 택배는\n [쿠팡] [2건] 입니다.",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.headlineSmall!.copyWith(
                                  height: 1.08,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMediaMicLine(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 32.h,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 68.adaptSize,
            width: 68.adaptSize,
            padding: EdgeInsets.all(8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgMediaMicLine,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 11.h,
                top: 8.v,
                bottom: 3.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillYellow.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder9,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIconOnerrorcontainer,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            "스피커 연동이 필요해요!",
                            style: CustomTextStyles
                                .bodySmallRobotoOnErrorContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 19.v),
                  Text(
                    "“ 똑똑한 AI 스피커를 이용해 보세요! ”",
                    style: CustomTextStyles.bodyMediumABeeZeeBlack900,
                  ),
                ],
              ),
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
