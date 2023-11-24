import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:magicool/core/app_export.dart';
import 'package:magicool/presentation/k25_page/k25_page.dart';
import 'package:magicool/presentation/k31_page/k31_page.dart';
import 'package:magicool/widgets/app_bar/appbar_title_edittext.dart';
import 'package:magicool/widgets/app_bar/appbar_trailing_image.dart';
import 'package:magicool/widgets/app_bar/custom_app_bar.dart';
import 'package:magicool/widgets/custom_bottom_bar.dart';
import 'package:magicool/widgets/custom_elevated_button.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildGeneric(context),
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Text(
                  "[냉장고 여유공간]",
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumArialPrimary,
                ),
              ),
              SizedBox(height: 9.v),
              _buildThirtyTwo(context),
              SizedBox(height: 22.v),
              Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Text(
                  "[음성 인식]",
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumArialPrimary,
                ),
              ),
              SizedBox(height: 5.v),
              Align(
                alignment: Alignment.center,
                child: Row(
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
                        style: CustomTextStyles.bodyMediumArialPrimary,
                      ),
                    ),
                  ],
                ),
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
  Widget _buildGeneric(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Column(
        children: [
          SizedBox(
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
                      color: theme.colorScheme.onError.withOpacity(1),
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
                                    style: CustomTextStyles.headlineSmallRoboto,
                                  ),
                                  Text(
                                    "11월 20일 수요일",
                                    style: CustomTextStyles
                                        .headlineSmallRobotoBluegray600,
                                  ),
                                  SizedBox(height: 54.v),
                                  Text(
                                    "연동을 완료해주세요",
                                    style: CustomTextStyles.headlineSmallRoboto,
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
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomOutlinedButton(
                  width: 159.h,
                  text: "보러가기",
                ),
                CustomElevatedButton(
                  height: 32.v,
                  width: 159.h,
                  text: "Download",
                  margin: EdgeInsets.only(left: 16.h),
                  buttonStyle: CustomButtonStyles.fillPrimaryContainer,
                  buttonTextStyle: CustomTextStyles.titleSmallRobotoOnError,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyTwo(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
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
              ImageConstant.imgGroup5,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Text(
          "현재 60% 정도 채워져 있습니다.",
          style: CustomTextStyles.bodyMediumArialOnError,
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
