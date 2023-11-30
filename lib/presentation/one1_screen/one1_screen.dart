import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:magicool/core/app_export.dart';
import 'package:magicool/presentation/k20_page/k20_page.dart';
import 'package:magicool/presentation/k8_page/k8_page.dart';
import 'package:magicool/widgets/app_bar/appbar_title_edittext.dart';
import 'package:magicool/widgets/app_bar/appbar_trailing_image.dart';
import 'package:magicool/widgets/app_bar/custom_app_bar.dart';
import 'package:magicool/widgets/custom_bottom_bar.dart';
import 'package:magicool/widgets/custom_outlined_button.dart';

class One1Screen extends StatelessWidget {
  One1Screen({Key? key})
      : super(
          key: key,
        );

  TextEditingController menuToastVariantFiveController =
      TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 4.h),
          child: Column(
            children: [
              _buildImageContainer(context),
              SizedBox(height: 16.v),
              CustomOutlinedButton(
                text: "보러가기",
                margin: EdgeInsets.only(
                  left: 17.h,
                  right: 16.h,
                ),
              ),
              SizedBox(height: 26.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 19.h),
                  child: Text(
                    "[냉장고 여유공간]",
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumArialBlack900,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              _buildThirtyNine(context),
              SizedBox(height: 22.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 19.h),
                  child: Text(
                    "[음성 인식]",
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumArialBlack900,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMediaMicLine,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 6.h,
                      top: 3.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "스피커를 이용해 보세요!",
                      style: CustomTextStyles.bodyMediumArialBlack900,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitleEdittext(
        margin: EdgeInsets.only(left: 29.h),
        hintText: "nugu를 연동해주세요.",
        controller: menuToastVariantFiveController,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMediaNotificationsLine,
          margin: EdgeInsets.fromLTRB(20.h, 20.v, 20.h, 12.v),
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
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgWomanPowerAlone,
                      height: 184.v,
                      width: 318.h,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 18.h,
                          top: 17.v,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "안녕하세요 정유빈 님,",
                              style: theme.textTheme.headlineSmall,
                            ),
                            Text(
                              "11월 20일 수요일",
                              style: CustomTextStyles.headlineSmallBluegray600,
                            ),
                            SizedBox(height: 54.v),
                            Text(
                              "오늘 배송 예정인 ",
                              style: theme.textTheme.headlineSmall,
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
  Widget _buildThirtyNine(BuildContext context) {
    return Container(
      width: 338.h,
      margin: EdgeInsets.only(
        left: 19.h,
        right: 10.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 33.h,
        vertical: 31.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup31,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Text(
        "현재 60% 정도 채워져 있습니다.",
        style: CustomTextStyles.bodyMediumArialPrimary,
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
