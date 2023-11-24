import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';

class ElevenScreen extends StatelessWidget {
  const ElevenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 685.h,
          child: Container(
            padding: EdgeInsets.all(32.h),
            decoration: AppDecoration.fillGray,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 4.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Using your Team Library",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 10.v),
                _buildEighteen(context),
                SizedBox(height: 22.v),
                CustomImageView(
                  imagePath: ImageConstant.img11,
                  height: 332.v,
                  width: 621.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEighteen(BuildContext context) {
    return SizedBox(
      height: 32.v,
      width: 619.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 619.h,
              child: Text(
                "To use styles and components from Team Libraries, click on         in the Assets panel in any of your files. Toggle on the ones you want to use in your design.",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall!.copyWith(
                  height: 1.45,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIconPrimary12x18,
            height: 12.v,
            width: 18.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 1.v,
              right: 282.h,
            ),
          ),
        ],
      ),
    );
  }
}
