import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';

// ignore_for_file: must_be_immutable
class NineDraweritem extends StatelessWidget {
  const NineDraweritem({Key? key})
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
              "Use components",
              style: theme.textTheme.titleLarge,
            ),
            SizedBox(height: 10.v),
            Container(
              width: 322.h,
              margin: EdgeInsets.only(right: 14.h),
              child: Text(
                "Drag and drop components onto your canvas from the Assets panel. If you’re on an Education, Professional, or Organization  team, you can publish them for team members to use across their own files.",
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall!.copyWith(
                  height: 1.45,
                ),
              ),
            ),
            SizedBox(height: 23.v),
            CustomImageView(
              imagePath: ImageConstant.img09,
              height: 300.v,
              width: 337.h,
            ),
          ],
        ),
      ),
    );
  }
}
