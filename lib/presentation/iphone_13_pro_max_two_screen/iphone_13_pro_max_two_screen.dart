import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';

class Iphone13ProMaxTwoScreen extends StatelessWidget {
  const Iphone13ProMaxTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 926.v,
                width: 453.h,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgGreenGradient1,
                      height: 878.v,
                      width: 453.h,
                      alignment: Alignment.bottomCenter),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: SingleChildScrollView(
                          padding: EdgeInsets.only(bottom: 33.v),
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 53.h),
                              child: Column(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgAllSports1,
                                    height: 152.v,
                                    width: 234.h),
                                SizedBox(height: 367.v),
                                Text(
                                    "Get free football games and all other sport ames",
                                    style: CustomTextStyles.titleMediumRoboto),
                                SizedBox(height: 23.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 110.h),
                                        child: Row(children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapView(context);
                                              },
                                              child: Container(
                                                  height: 20.adaptSize,
                                                  width: 20.adaptSize,
                                                  decoration: BoxDecoration(
                                                      color: theme
                                                          .colorScheme.onError
                                                          .withOpacity(1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.h)))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgFrame5,
                                              height: 20.v,
                                              width: 56.h,
                                              margin:
                                                  EdgeInsets.only(left: 10.h),
                                              onTap: () {
                                                onTapImgImage(context);
                                              })
                                        ])))
                              ]))))
                ]))));
  }

  /// Navigates to the iphone13ProMaxOneScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone13ProMaxOneScreen);
  }

  /// Navigates to the iphone13ProMaxThreeScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone13ProMaxThreeScreen);
  }
}
