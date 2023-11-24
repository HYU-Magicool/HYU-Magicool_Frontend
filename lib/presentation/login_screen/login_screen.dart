import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/widgets/custom_checkbox_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
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
              horizontal: 51.h,
              vertical: 44.v,
            ),
            decoration: AppDecoration.fillOnError,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 18.v),
                Container(
                  width: 189.h,
                  margin: EdgeInsets.only(left: 7.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "반가워요 ! \n",
                          style: theme.textTheme.headlineSmall,
                        ),
                        TextSpan(
                          text: "mag⁚Ↄool",
                          style: CustomTextStyles.headlineSmallBlueA700,
                        ),
                        TextSpan(
                          text: "과 함께\n스마트한 일상을 \n시작해요 ",
                          style: theme.textTheme.headlineSmall,
                        ),
                        TextSpan(
                          text: "⁚Ↄ\n",
                          style: CustomTextStyles.headlineSmallBlueA700,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 46.v),
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text(
                    "이메일 아이디를 입력하세요",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text(
                    "abbccc@gmail.com",
                    style: CustomTextStyles.bodyLargeNunitoBlack900,
                  ),
                ),
                SizedBox(height: 15.v),
                Divider(
                  indent: 7.h,
                  endIndent: 2.h,
                ),
                SizedBox(height: 21.v),
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text(
                    "비밀번호를 입력하세요",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Row(
                    children: [
                      Container(
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.black900,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.only(left: 6.h),
                        decoration: BoxDecoration(
                          color: appTheme.black900,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.only(left: 6.h),
                        decoration: BoxDecoration(
                          color: appTheme.black900,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.only(left: 6.h),
                        decoration: BoxDecoration(
                          color: appTheme.black900,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.only(left: 6.h),
                        decoration: BoxDecoration(
                          color: appTheme.black900,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.only(left: 6.h),
                        decoration: BoxDecoration(
                          color: appTheme.black900,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.v),
                Divider(
                  indent: 7.h,
                ),
                SizedBox(height: 14.v),
                _buildTf1(context),
                Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "비밀번호를 잊으셨어요?",
                    style: theme.textTheme.labelLarge!.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(height: 98.v),
                Align(
                  alignment: Alignment.center,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildTf1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.h),
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
