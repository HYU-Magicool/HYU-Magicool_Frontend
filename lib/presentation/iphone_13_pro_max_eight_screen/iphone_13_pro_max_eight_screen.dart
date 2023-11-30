import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/widgets/custom_elevated_button.dart';
import 'package:magicool/widgets/custom_text_form_field.dart';

class Iphone13ProMaxEightScreen extends StatelessWidget {
  Iphone13ProMaxEightScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.indigo50,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: 453.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 58.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 40.h,
                      right: 40.h,
                      bottom: 75.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Create New Password",
                            style: CustomTextStyles.headlineSmallGray800,
                          ),
                        ),
                        SizedBox(height: 48.v),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 200.adaptSize,
                            width: 200.adaptSize,
                            padding: EdgeInsets.all(50.h),
                            decoration: AppDecoration.fillDeeppurple50.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder100,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArcticonsPassword,
                              height: 100.adaptSize,
                              width: 100.adaptSize,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                        SizedBox(height: 60.v),
                        Container(
                          width: 292.h,
                          margin: EdgeInsets.only(
                            left: 30.h,
                            right: 49.h,
                          ),
                          child: Text(
                            "Your New Passwoed must be different from previously used Password",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        SizedBox(height: 65.v),
                        Padding(
                          padding: EdgeInsets.only(left: 23.h),
                          child: Text(
                            "New Password",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        SizedBox(height: 13.v),
                        CustomTextFormField(
                          controller: editTextController,
                          obscureText: true,
                          borderDecoration:
                              TextFormFieldStyleHelper.fillPrimary,
                          fillColor: theme.colorScheme.primary,
                        ),
                        SizedBox(height: 47.v),
                        Padding(
                          padding: EdgeInsets.only(left: 23.h),
                          child: Text(
                            "Confirm Password",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        SizedBox(height: 13.v),
                        CustomTextFormField(
                          controller: editTextController1,
                          textInputAction: TextInputAction.done,
                          obscureText: true,
                          borderDecoration:
                              TextFormFieldStyleHelper.fillPrimary,
                          fillColor: theme.colorScheme.primary,
                        ),
                        SizedBox(height: 51.v),
                        CustomElevatedButton(
                          width: 218.h,
                          text: "Save",
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
