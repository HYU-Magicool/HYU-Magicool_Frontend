import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/widgets/custom_checkbox_button.dart';
import 'package:magicool/widgets/custom_icon_button.dart';

class LoginPageScreen extends StatelessWidget {
  LoginPageScreen({Key? key})
      : super(
          key: key,
        );

  bool loginKeep = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 52.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Column(
              children: [
                SizedBox(height: 8.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 212.h,
                    margin: EdgeInsets.only(left: 50.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "반가워요 !  \n",
                            style: CustomTextStyles.headlineSmallInter,
                          ),
                          TextSpan(
                            text: "mag⁚Ↄool",
                            style: theme.textTheme.headlineLarge,
                          ),
                          TextSpan(
                            text: "과 함께\n스마트한 일상을 \n시작해요 ",
                            style: CustomTextStyles.headlineSmallInter,
                          ),
                          TextSpan(
                            text: "⁚Ↄ\n",
                            style: CustomTextStyles.headlineSmallInterBlueA700,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 40.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 50.h),
                    child: Text(
                      "이메일 아이디를 입력하세요",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
                SizedBox(height: 33.v),
                Divider(
                  color: appTheme.gray200,
                  indent: 50.h,
                  endIndent: 45.h,
                ),
                SizedBox(height: 36.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 50.h),
                    child: Text(
                      "비밀번호를 입력하세요",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
                SizedBox(height: 31.v),
                Divider(
                  color: appTheme.gray200,
                  indent: 50.h,
                  endIndent: 43.h,
                ),
                SizedBox(height: 18.v),
                _buildLoginKeep(context),
                SizedBox(height: 21.v),
                CustomIconButton(
                  height: 58.v,
                  width: 280.h,
                  decoration: IconButtonStyleHelper.outlineBlack,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgVector,
                  ),
                ),
                SizedBox(height: 19.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "비밀번호를 잊으셨나요?",
                      style:
                          CustomTextStyles.labelLargeNotoSansKRGray700.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 22.h),
                      child: Text(
                        "회원가입 하기",
                        style: CustomTextStyles.labelLargeNotoSansKRGray700
                            .copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 27.v),
                _buildNineteen(context),
                SizedBox(height: 27.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 74.h,
                    right: 61.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 54.adaptSize,
                        width: 54.adaptSize,
                        padding: EdgeInsets.all(12.h),
                        decoration: IconButtonStyleHelper.fillYellowA,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup17,
                        ),
                      ),
                      Spacer(
                        flex: 50,
                      ),
                      CustomIconButton(
                        height: 54.adaptSize,
                        width: 54.adaptSize,
                        padding: EdgeInsets.all(17.h),
                        decoration: IconButtonStyleHelper.outlineBlackTL4,
                        child: CustomImageView(
                          imagePath: ImageConstant.img,
                        ),
                      ),
                      Spacer(
                        flex: 50,
                      ),
                      CustomIconButton(
                        height: 54.adaptSize,
                        width: 54.adaptSize,
                        padding: EdgeInsets.all(12.h),
                        decoration: IconButtonStyleHelper.outlineBlackTL41,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginKeep(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 54.h),
        child: CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "로그인 유지",
          value: loginKeep,
          onChange: (value) {
            loginKeep = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNineteen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              bottom: 8.v,
            ),
            child: SizedBox(
              width: 91.h,
              child: Divider(),
            ),
          ),
          Text(
            "SNS 간편 로그인하기",
            style: CustomTextStyles.titleMediumInter,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 8.v,
            ),
            child: SizedBox(
              width: 91.h,
              child: Divider(),
            ),
          ),
        ],
      ),
    );
  }
}
