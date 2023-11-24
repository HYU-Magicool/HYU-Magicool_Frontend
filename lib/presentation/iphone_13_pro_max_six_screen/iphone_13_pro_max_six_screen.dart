import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/widgets/custom_elevated_button.dart';
import 'package:magicool/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone13ProMaxSixScreen extends StatelessWidget {
  Iphone13ProMaxSixScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.indigo50,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: 453.h,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 58.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 40.h, right: 40.h, bottom: 115.v),
                              child: Column(children: [
                                Text("Reset Password",
                                    style: CustomTextStyles
                                        .headlineSmallRobotoGray800),
                                SizedBox(height: 48.v),
                                Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 86.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 65.h, vertical: 49.v),
                                    decoration: AppDecoration.fillDeepPurple
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder100),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(height: 20.v),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector,
                                              height: 27.v,
                                              width: 44.h),
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              color: appTheme.purple500
                                                  .withOpacity(0.72),
                                              shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      color: appTheme.gray80001,
                                                      width: 2.h),
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder9),
                                              child: Container(
                                                  height: 53.v,
                                                  width: 69.h,
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 18.h,
                                                      vertical: 7.v),
                                                  decoration: AppDecoration
                                                      .outlineGray
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder9),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Container(
                                                                height: 30
                                                                    .adaptSize,
                                                                width: 30
                                                                    .adaptSize,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        bottom: 1
                                                                            .v),
                                                                decoration: BoxDecoration(
                                                                    color: appTheme
                                                                        .blueGray100,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            15.h)))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        right: 8
                                                                            .h),
                                                                child: Text("?",
                                                                    style: CustomTextStyles
                                                                        .headlineSmallRobotoGray80001)))
                                                      ])))
                                        ])),
                                SizedBox(height: 45.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        width: 288.h,
                                        margin: EdgeInsets.only(
                                            left: 23.h, right: 60.h),
                                        child: Text(
                                            "Enter the Email associated with your acoount to receive a verification code",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .titleMediumInterGray80001))),
                                SizedBox(height: 61.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 23.h),
                                        child: Text("Enter Email",
                                            style: theme.textTheme.bodyLarge))),
                                SizedBox(height: 13.v),
                                CustomTextFormField(
                                    controller: editTextController,
                                    textInputAction: TextInputAction.done),
                                SizedBox(height: 77.v),
                                Text("Try another way",
                                    style: CustomTextStyles
                                        .titleMediumRobotoPurple500),
                                SizedBox(height: 75.v),
                                CustomElevatedButton(
                                    width: 218.h,
                                    text: "Send",
                                    onPressed: () {
                                      onTapSend(context);
                                    })
                              ]))))
                ]))));
  }

  /// Navigates to the iphone13ProMaxSevenScreen when the action is triggered.
  onTapSend(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone13ProMaxSevenScreen);
  }
}
