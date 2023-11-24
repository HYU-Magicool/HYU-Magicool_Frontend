import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';

// ignore_for_file: must_be_immutable
class EightDraweritem extends StatelessWidget {
  const EightDraweritem({Key? key})
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
                "Create components",
                style: theme.textTheme.titleLarge,
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(
              width: 337.h,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "Create components out of commonly used objects such as buttons and icons to reuse them across your designs.\n\nSelect an element and click",
                      style: theme.textTheme.bodySmall!.copyWith(
                        height: 1.45,
                      ),
                    ),
                    TextSpan(
                      text:
                          " Create Component in the top bar or the right-click menu.",
                      style: theme.textTheme.labelMedium,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 22.v),
            CustomImageView(
              imagePath: ImageConstant.img08,
              height: 204.v,
              width: 337.h,
            ),
            SizedBox(height: 24.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.fillGray100.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder3,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIcon16x16,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(bottom: 16.v),
                  ),
                  Expanded(
                    child: Container(
                      width: 276.h,
                      margin: EdgeInsets.only(left: 8.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Tip:",
                              style: theme.textTheme.labelMedium,
                            ),
                            TextSpan(
                              text:
                                  " The keyboard shortcut to create a component is ",
                              style: theme.textTheme.bodySmall,
                            ),
                            TextSpan(
                              text: "Ctrl Alt K ",
                              style: theme.textTheme.labelMedium,
                            ),
                            TextSpan(
                              text: "on Windows, or ",
                              style: theme.textTheme.bodySmall,
                            ),
                            TextSpan(
                              text: "⌘⌥K ",
                              style: theme.textTheme.labelMedium,
                            ),
                            TextSpan(
                              text: "on a Mac.",
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
          ],
        ),
      ),
    );
  }
}
