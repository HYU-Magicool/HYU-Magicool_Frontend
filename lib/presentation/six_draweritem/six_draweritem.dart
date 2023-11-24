import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SixDraweritem extends StatelessWidget {
  const SixDraweritem({Key? key})
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
              "Create text styles",
              style: theme.textTheme.titleLarge,
            ),
            SizedBox(height: 10.v),
            SizedBox(
              height: 48.v,
              width: 325.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIconPrimary,
                    height: 11.adaptSize,
                    width: 11.adaptSize,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(
                      top: 17.v,
                      right: 58.h,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 325.h,
                      child: Text(
                        "To create new text styles, first select a text layer and format it with the type you want as a style. Then, click on      in the text styles menu.",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall!.copyWith(
                          height: 1.45,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 22.v),
            CustomImageView(
              imagePath: ImageConstant.img061,
              height: 316.v,
              width: 337.h,
            ),
          ],
        ),
      ),
    );
  }
}
