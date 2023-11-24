import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';

class Iphone13ProMaxOneScreen extends StatelessWidget {
  const Iphone13ProMaxOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.purple600,
                appTheme.purple600.withOpacity(0.77),
                theme.colorScheme.onSecondaryContainer,
              ],
            ),
          ),
          child: SizedBox(
            width: 453.h,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 798.v,
                    width: 453.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle15,
                          height: 732.v,
                          width: 453.h,
                          alignment: Alignment.topCenter,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgScreenshot2022,
                          height: 356.v,
                          width: 453.h,
                          alignment: Alignment.bottomCenter,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgScreenshot2022338x238,
                          height: 338.v,
                          width: 238.h,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 104.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgScreenshot2022328x322,
                          height: 328.v,
                          width: 322.h,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(top: 114.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGamePro1,
                          height: 192.v,
                          width: 453.h,
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 278.v),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25.v),
                  Text(
                    "Exclusives  access to all offline and online games ",
                    style: CustomTextStyles.titleMediumRoboto,
                  ),
                  SizedBox(height: 33.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame4,
                    height: 20.v,
                    width: 92.h,
                  ),
                  SizedBox(height: 30.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
