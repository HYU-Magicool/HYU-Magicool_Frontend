import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FiveDraweritem extends StatelessWidget {
  const FiveDraweritem({Key? key})
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 4.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Edit text styles",
                style: theme.textTheme.titleLarge,
              ),
            ),
            SizedBox(height: 11.v),
            SizedBox(
              height: 48.v,
              width: 334.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 334.h,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "Just like published color styles, published text styles are shared across your team. Change text styles by selecting a text layer with the style and clicking on       in the",
                              style: theme.textTheme.bodySmall,
                            ),
                            TextSpan(
                              text: " panel to the right.",
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgIcon,
                    height: 14.v,
                    width: 12.h,
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(bottom: 2.v),
                  ),
                ],
              ),
            ),
            SizedBox(height: 22.v),
            CustomImageView(
              imagePath: ImageConstant.img05,
              height: 316.v,
              width: 337.h,
            ),
          ],
        ),
      ),
    );
  }
}
