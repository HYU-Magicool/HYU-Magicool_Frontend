import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:magicool/core/app_export.dart';
import 'package:magicool/widgets/app_bar/appbar_title_image.dart';
import 'package:magicool/widgets/app_bar/appbar_trailing_image.dart';
import 'package:magicool/widgets/app_bar/custom_app_bar.dart';
import 'package:magicool/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class K8Page extends StatelessWidget {
  const K8Page({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 20.v),
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              _buildNinetyThree(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 20.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 6.v),
                    Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: Text(
                        "[냉장고 여유공간]",
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyMediumArialBlack900,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    _buildThirtyOne(context),
                    SizedBox(height: 22.v),
                    Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: Text(
                        "[음성 인식]",
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyMediumArialBlack900,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Padding(
                      padding: EdgeInsets.only(left: 79.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgMediaMicLine,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 3.h,
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyThree(BuildContext context) {
    return SizedBox(
      height: 307.v,
      width: 366.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "안녕하세요! 정유빈 님,",
                                          style: theme.textTheme.headlineSmall,
                                        ),
                                        Text(
                                          "11월 20일 수요일",
                                          style: CustomTextStyles
                                              .headlineSmallBluegray600,
                                        ),
                                        SizedBox(height: 16.v),
                                        SizedBox(
                                          width: 232.h,
                                          child: Text(
                                            "오늘 배송 예정인 택배는\n [쿠팡] [2건] 입니다.",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme
                                                .textTheme.headlineSmall!
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
                CustomOutlinedButton(
                  text: "보러가기",
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                ),
              ],
            ),
          ),
          CustomAppBar(
            height: 49.v,
            title: AppbarTitleImage(
              imagePath: ImageConstant.imgImage14,
              margin: EdgeInsets.only(left: 11.h),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgMediaNotificationsLine,
                margin: EdgeInsets.fromLTRB(20.h, 13.v, 20.h, 12.v),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyOne(BuildContext context) {
    return Container(
      width: 338.h,
      margin: EdgeInsets.only(left: 9.h),
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
}
