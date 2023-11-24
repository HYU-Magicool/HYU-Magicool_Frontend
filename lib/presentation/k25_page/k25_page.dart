import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:magicool/core/app_export.dart';
import 'package:magicool/widgets/app_bar/appbar_trailing_image.dart';
import 'package:magicool/widgets/app_bar/custom_app_bar.dart';
import 'package:magicool/widgets/custom_elevated_button.dart';
import 'package:magicool/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class K25Page extends StatelessWidget {
  const K25Page({Key? key})
      : super(
          key: key,
        );

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
              _buildFive(context),
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
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMediaNotificationsLine,
          margin: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 16.v,
          ),
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
                        alignment: Alignment.centerLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgWomanPowerAlone,
                            height: 184.v,
                            width: 318.h,
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 18.h),
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
                                  SizedBox(height: 38.v),
                                  SizedBox(
                                    width: 232.h,
                                    child: Text(
                                      "오늘 배송 예정인 택배는  2건 입니다.",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .headlineSmallRoboto
                                          .copyWith(
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
  Widget _buildFive(BuildContext context) {
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
}
