import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/widgets/custom_elevated_button.dart';

class Iphone13ProMaxThreeScreen extends StatelessWidget {
  const Iphone13ProMaxThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.blue900Dd,
                theme.colorScheme.errorContainer,
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  SizedBox(
                    height: 654.v,
                    width: 453.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle17,
                          height: 654.v,
                          width: 453.h,
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgScreenshot2022429x453,
                          height: 429.v,
                          width: 453.h,
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 5.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgScreenshot2022234x400,
                          height: 234.v,
                          width: 400.h,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(top: 200.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgScreenshot2022440x434,
                          height: 440.v,
                          width: 434.h,
                          alignment: Alignment.bottomCenter,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 70.v),
                  Text(
                    "Kids fun games and lots more..",
                    style: CustomTextStyles.titleMediumRoboto,
                  ),
                  SizedBox(height: 19.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame6,
                    height: 20.v,
                    width: 92.h,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 164.h),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildGetStarted(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildGetStarted(BuildContext context) {
    return CustomElevatedButton(
      height: 68.v,
      width: 222.h,
      text: "Get Started",
      margin: EdgeInsets.only(
        left: 115.h,
        right: 116.h,
        bottom: 34.v,
      ),
      buttonStyle: CustomButtonStyles.outlinePrimary,
      buttonTextStyle: CustomTextStyles.headlineSmallRobotoOnError24,
    );
  }
}
