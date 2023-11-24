import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TwoDraweritem extends StatelessWidget {
  const TwoDraweritem({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Drawer(
      child: Container(
        width: 401.h,
        padding: EdgeInsets.symmetric(
          horizontal: 32.h,
          vertical: 36.v,
        ),
        decoration: AppDecoration.fillGray,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Edit team color styles",
                style: theme.textTheme.titleLarge,
              ),
            ),
            SizedBox(height: 11.v),
            SizedBox(
              height: 96.v,
              width: 335.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 335.h,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "Published styles are shared with everyone on the team—they can be used by all team members in any of their files. Changing these styles will update them everywhere they're used.\n",
                              style: theme.textTheme.bodySmall,
                            ),
                            TextSpan(
                              text:
                                  "\nChange these default colors to your team’s colors by selecting a color layer and clicking on       in the ",
                              style: theme.textTheme.bodySmall!.copyWith(
                                height: 1.45,
                              ),
                            ),
                            TextSpan(
                              text: "Design panel",
                              style: theme.textTheme.bodySmall,
                            ),
                            TextSpan(
                              text: " to the right.",
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
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(
                      left: 141.h,
                      bottom: 2.v,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 22.v),
            CustomImageView(
              imagePath: ImageConstant.img02,
              height: 264.v,
              width: 337.h,
            ),
          ],
        ),
      ),
    );
  }
}
