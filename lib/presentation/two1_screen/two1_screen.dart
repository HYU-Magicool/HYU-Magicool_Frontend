import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/widgets/custom_checkbox_button.dart';

class Two1Screen extends StatelessWidget {
  Two1Screen({Key? key})
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
            padding: EdgeInsets.all(44.h),
            decoration: AppDecoration.fillOnError,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 18.v),
                Container(
                  width: 189.h,
                  margin: EdgeInsets.only(left: 14.h),
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
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text(
                    "이메일 아이디를 입력하세요",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text(
                    "abbccc@gmail.com",
                    style: CustomTextStyles.bodyLargeNunitoBlack900,
                  ),
                ),
                SizedBox(height: 15.v),
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
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.only(left: 14.h),
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
                Align(
                  alignment: Alignment.center,
                  child: Divider(
                    indent: 14.h,
                    endIndent: 7.h,
                  ),
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
                SizedBox(height: 17.v),
                Container(
                  height: 62.v,
                  width: 283.h,
                  margin: EdgeInsets.only(left: 4.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.only(left: 3.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 100.h,
                            vertical: 17.v,
                          ),
                          decoration:
                              AppDecoration.outlineSecondaryContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder22,
                          ),
                          child: Text(
                            "로그인하기".toUpperCase(),
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 62.v,
                          width: 280.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  height: 58.v,
                                  width: 280.h,
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.secondaryContainer,
                                    borderRadius: BorderRadius.circular(
                                      22.h,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: theme
                                            .colorScheme.secondaryContainer
                                            .withOpacity(0.15),
                                        spreadRadius: 2.h,
                                        blurRadius: 2.h,
                                        offset: Offset(
                                          0,
                                          2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "간편 로그인 추가 (네이버, 카카오,구글,  페이스북, 트위터)"
                                      .toUpperCase(),
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18.v),
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
      padding: EdgeInsets.only(left: 16.h),
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
