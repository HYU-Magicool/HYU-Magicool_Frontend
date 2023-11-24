import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/widgets/custom_checkbox_button.dart';
import 'package:magicool/widgets/custom_icon_button.dart';

class LoginOneScreen extends StatelessWidget {
  LoginOneScreen({Key? key})
      : super(
          key: key,
        );

  bool tf = false;

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
              vertical: 61.v,
            ),
            decoration: AppDecoration.fillOnError,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 212.h,
                  margin: EdgeInsets.only(
                    left: 14.h,
                    right: 60.h,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "반가워요 ! 🙌 ",
                          style: theme.textTheme.headlineSmall,
                        ),
                        TextSpan(
                          text: "\nmag⁚Ↄoo",
                          style: CustomTextStyles.headlineLargeInterBlueA700,
                        ),
                        TextSpan(
                          text: "l과 함께\n스마트한 일상을 \n시작해요",
                          style: theme.textTheme.headlineSmall,
                        ),
                        TextSpan(
                          text: " ⁚Ↄ\n",
                          style: CustomTextStyles.headlineSmallBlueA700,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 40.v),
                Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text(
                    "이메일 아이디를 입력하세요",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 48.v),
                Align(
                  alignment: Alignment.center,
                  child: Divider(
                    indent: 14.h,
                    endIndent: 9.h,
                  ),
                ),
                SizedBox(height: 21.v),
                Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text(
                    "비밀번호를 입력하세요",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 48.v),
                Align(
                  alignment: Alignment.center,
                  child: Divider(
                    indent: 14.h,
                    endIndent: 7.h,
                  ),
                ),
                SizedBox(height: 21.v),
                _buildTf1(context),
                SizedBox(height: 21.v),
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: CustomIconButton(
                    height: 58.v,
                    width: 280.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVectorOnerror,
                    ),
                  ),
                ),
                SizedBox(height: 25.v),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 28.h,
                      right: 32.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "비밀번호를 잊으셨어요?",
                          style: theme.textTheme.labelLarge!.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 22.h),
                          child: Text(
                            "회원가입 하기",
                            style: theme.textTheme.labelLarge!.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 95.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTf1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18.h),
      child: CustomCheckboxButton(
        text: "로그인 유지",
        value: tf,
        onChange: (value) {
          tf = value;
        },
      ),
    );
  }
}
