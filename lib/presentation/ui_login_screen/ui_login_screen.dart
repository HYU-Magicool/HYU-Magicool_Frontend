import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/widgets/custom_elevated_button.dart';
import 'package:magicool/widgets/custom_outlined_button.dart';

class UiLoginScreen extends StatelessWidget {
  const UiLoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 40.h,
            vertical: 30.v,
          ),
          child: Column(
            children: [
              Text(
                "로그인",
                style: CustomTextStyles.titleLargeNotoSansKRBluegray900,
              ),
              SizedBox(height: 13.v),
              CustomElevatedButton(
                height: 60.v,
                text: "이메일로 로그인",
                buttonStyle: CustomButtonStyles.fillGray,
                buttonTextStyle: CustomTextStyles.titleSmallNotoSansKROnError,
              ),
              SizedBox(height: 10.v),
              CustomOutlinedButton(
                height: 60.v,
                text: "구글로 로그인",
                buttonStyle: CustomButtonStyles.outlineGray,
                buttonTextStyle: CustomTextStyles.titleSmallNotoSansKRGray900,
              ),
              SizedBox(height: 25.v),
              Text(
                "이메일을 잊으셨어요?",
                style: theme.textTheme.labelLarge!.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
