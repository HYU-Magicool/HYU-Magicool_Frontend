import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
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
              horizontal: 24.h,
              vertical: 88.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgLogo,
                  height: 260.v,
                  width: 326.h,
                ),
                SizedBox(height: 60.v),
                CustomImageView(
                  imagePath: ImageConstant.imgImage4,
                  height: 121.adaptSize,
                  width: 121.adaptSize,
                ),
                SizedBox(height: 35.v),
                Text(
                  "47%",
                  style: CustomTextStyles.bodyMediumABeeZeeGray700,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
