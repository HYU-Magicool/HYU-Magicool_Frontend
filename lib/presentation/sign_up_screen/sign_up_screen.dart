import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/widgets/custom_elevated_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 47.h,
              vertical: 68.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
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
                Spacer(),
                SizedBox(height: 82.v),
                CustomElevatedButton(
                  height: 58.v,
                  text: "계정 만들기".toUpperCase(),
                  margin: EdgeInsets.only(left: 1.h),
                  buttonStyle: CustomButtonStyles.outlineBlueA,
                  buttonTextStyle: CustomTextStyles.titleMediumNunitoPrimary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
