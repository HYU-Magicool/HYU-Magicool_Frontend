import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FourDraweritem extends StatelessWidget {
  const FourDraweritem({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Drawer(
      child: Container(
        width: 401.h,
        padding: EdgeInsets.all(32.h),
        decoration: AppDecoration.fillGray,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 5.v),
            Text(
              "Use color styles",
              style: theme.textTheme.titleLarge,
            ),
            SizedBox(height: 10.v),
            SizedBox(
              height: 32.v,
              width: 321.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIconPrimary9x9,
                    height: 9.adaptSize,
                    width: 9.adaptSize,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(
                      left: 148.h,
                      top: 2.v,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 321.h,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "Select a layer, then click on       next to ",
                              style: theme.textTheme.bodySmall,
                            ),
                            TextSpan(
                              text: "the ",
                              style: theme.textTheme.bodySmall,
                            ),
                            TextSpan(
                              text: "Fill",
                              style: theme.textTheme.bodySmall,
                            ),
                            TextSpan(
                              text: " property in the panel to the right.",
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 22.v),
            CustomImageView(
              imagePath: ImageConstant.img04,
              height: 332.v,
              width: 337.h,
            ),
          ],
        ),
      ),
    );
  }
}
