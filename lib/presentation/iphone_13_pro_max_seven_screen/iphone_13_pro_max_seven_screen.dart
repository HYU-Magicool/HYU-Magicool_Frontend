import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/widgets/custom_elevated_button.dart';

class Iphone13ProMaxSevenScreen extends StatelessWidget {
  const Iphone13ProMaxSevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.indigo50,
            body: SizedBox(
                width: 453.h,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 60.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 85.h, right: 85.h, bottom: 115.v),
                              child: Column(children: [
                                Text("Verify your Email",
                                    style: CustomTextStyles
                                        .headlineSmallRobotoGray800),
                                SizedBox(height: 46.v),
                                Container(
                                    height: 200.adaptSize,
                                    width: 200.adaptSize,
                                    padding: EdgeInsets.all(50.h),
                                    decoration: AppDecoration.fillDeepPurple
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder100),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgOouiMessage,
                                        height: 100.adaptSize,
                                        width: 100.adaptSize,
                                        alignment: Alignment.center)),
                                SizedBox(height: 45.v),
                                SizedBox(
                                    width: 281.h,
                                    child: Text(
                                        "Please enter the Four digit code sent to Ju*********11@gmail.com",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .titleMediumInterGray80001)),
                                SizedBox(height: 100.v),
                                CustomImageView(
                                    imagePath: ImageConstant.imgFrame8,
                                    height: 1.v,
                                    width: 162.h,
                                    alignment: Alignment.centerRight,
                                    margin: EdgeInsets.only(right: 40.h)),
                                SizedBox(height: 124.v),
                                Text("Reaend code",
                                    style: CustomTextStyles
                                        .titleMediumRobotoPurple500),
                                SizedBox(height: 77.v),
                                CustomElevatedButton(
                                    text: "Verify",
                                    margin: EdgeInsets.only(
                                        left: 33.h, right: 30.h),
                                    onPressed: () {
                                      onTapVerify(context);
                                    })
                              ]))))
                ]))));
  }

  /// Navigates to the iphone13ProMaxEightScreen when the action is triggered.
  onTapVerify(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone13ProMaxEightScreen);
  }
}
