import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/widgets/custom_elevated_button.dart';
import 'package:magicool/widgets/custom_text_form_field.dart';

class SignupPageScreen extends StatelessWidget {
  SignupPageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController carbonEmailController = TextEditingController();

  TextEditingController editText1Controller = TextEditingController();

  TextEditingController editText2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 42.h,
              vertical: 63.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "회원가입 \n",
                          style: CustomTextStyles.headlineSmallInter,
                        ),
                        TextSpan(
                          text: "\n",
                          style: CustomTextStyles.headlineSmallInterBlueA700,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 48.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCarbonEmail,
                        height: 22.v,
                        width: 24.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.h,
                          top: 2.v,
                        ),
                        child: Text(
                          "이메일 입력",
                          style:
                              CustomTextStyles.bodyMediumRobotoPrimaryContainer,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.v),
                _buildCarbonEmail(context),
                SizedBox(height: 27.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 19.adaptSize,
                        width: 19.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Text(
                          "사용자 이름 입력",
                          style:
                              CustomTextStyles.bodyMediumRobotoPrimaryContainer,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.v),
                _buildEditText1(context),
                SizedBox(height: 22.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMdiPasswordOutline,
                      height: 25.adaptSize,
                      width: 25.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.h,
                        top: 6.v,
                      ),
                      child: Text(
                        "비밀번호 설정",
                        style:
                            CustomTextStyles.bodyMediumRobotoPrimaryContainer,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.v),
                _buildEditText2(context),
                SizedBox(height: 28.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgArcticonsPassword,
                        height: 23.v,
                        width: 24.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          top: 4.v,
                        ),
                        child: Text(
                          "비밀번호 확인",
                          style:
                              CustomTextStyles.bodyMediumRobotoPrimaryContainer,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
                Container(
                  height: 43.v,
                  width: 289.h,
                  margin: EdgeInsets.only(left: 1.h),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray100,
                    borderRadius: BorderRadius.circular(
                      21.h,
                    ),
                  ),
                ),
                SizedBox(height: 55.v),
                _buildCreateAccountButton(context),
                SizedBox(height: 87.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCarbonEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: CustomTextFormField(
        controller: carbonEmailController,
        borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
        fillColor: appTheme.blueGray100,
      ),
    );
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: CustomTextFormField(
        controller: editText1Controller,
        borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
        fillColor: appTheme.blueGray100,
      ),
    );
  }

  /// Section Widget
  Widget _buildEditText2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: CustomTextFormField(
        controller: editText2Controller,
        textInputAction: TextInputAction.done,
        borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
        fillColor: appTheme.blueGray100,
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateAccountButton(BuildContext context) {
    return CustomElevatedButton(
      height: 58.v,
      text: "계정 만들기".toUpperCase(),
      margin: EdgeInsets.only(
        left: 6.h,
        right: 5.h,
      ),
      buttonStyle: CustomButtonStyles.outlineBlueA,
      buttonTextStyle: CustomTextStyles.titleMediumNunitoPrimary,
    );
  }
}
