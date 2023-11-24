import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';

class OneScreen extends StatelessWidget {
  const OneScreen({Key? key})
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
            decoration: AppDecoration.fillGray,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img01,
                  height: 492.v,
                  width: 342.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 32.h,
                    top: 142.v,
                    bottom: 142.v,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 264.h,
                        child: Text(
                          "Build your own team library",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.displaySmall!.copyWith(
                            height: 1.15,
                          ),
                        ),
                      ),
                      SizedBox(height: 12.v),
                      SizedBox(
                        width: 273.h,
                        child: Text(
                          "Don’t reinvent the wheel with every design. Team libraries let you share styles and components across files, with everyone on your team.",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style:
                              CustomTextStyles.bodyMediumInterPrimary.copyWith(
                            height: 1.71,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
