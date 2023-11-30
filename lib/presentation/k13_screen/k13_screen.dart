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

class K13Screen extends StatelessWidget {
  K13Screen({Key? key})
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
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 5.v),
              _buildImageContainer(context),
              SizedBox(height: 16.v),
              CustomOutlinedButton(
                text: "보러가기",
                margin: EdgeInsets.only(
                  left: 18.h,
                  right: 23.h,
                ),
              ),
              SizedBox(height: 35.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "🔊 음성 인식 서비스",
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleLargeArial,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              _buildMediaMicLine(context),
              SizedBox(height: 30.v),
              _buildThirtySeven(context),
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
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 22.h,
          right: 34.h,
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
                  top: 11.v,
                  bottom: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 9.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.fillTeal.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder9,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgIconOnerrorcontainer16x16,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "스피커 연동이 완료되었어요! ",
                              style: CustomTextStyles
                                  .bodySmallRobotoOnErrorContainer,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.v),
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
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtySeven(BuildContext context) {
    return Container(
      width: 372.h,
      margin: EdgeInsets.only(right: 3.h),
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 31.v,
      ),
      decoration: AppDecoration.fillRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder70,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "무엇을 도와드릴까요?",
              style: CustomTextStyles.titleLargeRoboto_1,
            ),
          ),
          SizedBox(height: 27.v),
          Text(
            "“ 오늘 택배 도착 예정 시간을 알려줘 “",
            style: CustomTextStyles.titleLargeRoboto,
          ),
          SizedBox(height: 51.v),
          CustomImageView(
            imagePath: ImageConstant.imgRecordVoiceOver,
            height: 60.adaptSize,
            width: 60.adaptSize,
            alignment: Alignment.center,
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
