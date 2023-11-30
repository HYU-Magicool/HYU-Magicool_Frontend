import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/widgets/custom_checkbox_button.dart';
import 'package:magicool/widgets/custom_icon_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  bool loginKeepLoggedInCheckbox = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 44.h,
              vertical: 52.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Column(
              children: [
                SizedBox(height: 11.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 212.h,
                    margin: EdgeInsets.only(
                      left: 14.h,
                      right: 60.h,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "반가워요 !  \n",
                            style: CustomTextStyles.headlineSmallInter,
                          ),
                          TextSpan(
                            text: "mag⁚Ↄool",
                            style: CustomTextStyles.headlineLargeInterBlueA700,
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
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      "이메일 아이디를 입력하세요",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
                SizedBox(height: 33.v),
                Divider(
                  indent: 14.h,
                  endIndent: 9.h,
                ),
                SizedBox(height: 36.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      "비밀번호를 입력하세요",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
                SizedBox(height: 31.v),
                Divider(
                  indent: 14.h,
                  endIndent: 7.h,
                ),
                SizedBox(height: 18.v),
                _buildLoginKeepLoggedInCheckbox(context),
                SizedBox(height: 21.v),
                CustomIconButton(
                  height: 58.v,
                  width: 280.h,
                  decoration: IconButtonStyleHelper.outlineBlack,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgVectorPrimary,
                  ),
                ),
                SizedBox(height: 25.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 28.h,
                    right: 32.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "비밀번호를 잊으셨나요?",
                        style: CustomTextStyles.labelLargeNotoSansKRGray700
                            .copyWith(
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
                ),
                SizedBox(height: 21.v),
                Text(
                  "SNS 간편 로그인하기",
                  style: CustomTextStyles.titleMediumBlack900,
                ),
                SizedBox(height: 27.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 38.h,
                    right: 25.h,
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
  Widget _buildLoginKeepLoggedInCheckbox(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 18.h),
        child: CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "로그인 유지",
          value: loginKeepLoggedInCheckbox,
          onChange: (value) {
            loginKeepLoggedInCheckbox = value;
          },
        ),
      ),
    );
  }
}
