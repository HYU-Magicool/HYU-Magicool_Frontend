import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ThreeDraweritem extends StatelessWidget {
  const ThreeDraweritem({Key? key})
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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 5.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Create color styles",
                style: theme.textTheme.titleLarge,
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(
              height: 32.v,
              width: 329.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 329.h,
                      child: Text(
                        "To create new styles, select a layer and fill it with the color you want as a style. Then click on       in the color styles menu.",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall!.copyWith(
                          height: 1.45,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgIconPrimary,
                    height: 11.adaptSize,
                    width: 11.adaptSize,
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(bottom: 3.v),
                  ),
                ],
              ),
            ),
            SizedBox(height: 22.v),
            CustomImageView(
              imagePath: ImageConstant.img03,
              height: 260.v,
              width: 337.h,
            ),
            SizedBox(height: 16.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillGray100.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder3,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIconPrimary16x16,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 17.v,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 273.h,
                      margin: EdgeInsets.only(
                        left: 12.h,
                        top: 1.v,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Tip: ",
                              style: theme.textTheme.labelMedium,
                            ),
                            TextSpan(
                              text:
                                  "You can group styles together using the naming convention ",
                              style: theme.textTheme.bodySmall,
                            ),
                            TextSpan(
                              text: "Gr",
                              style: theme.textTheme.labelMedium,
                            ),
                            TextSpan(
                              text: "oup/C",
                              style: theme.textTheme.labelMedium,
                            ),
                            TextSpan(
                              text: "olor",
                              style: theme.textTheme.labelMedium,
                            ),
                            TextSpan(
                              text: ". For example: ",
                              style: theme.textTheme.bodySmall,
                            ),
                            TextSpan(
                              text: "Fuschia/100",
                              style: theme.textTheme.labelMedium,
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
          ],
        ),
      ),
    );
  }
}
