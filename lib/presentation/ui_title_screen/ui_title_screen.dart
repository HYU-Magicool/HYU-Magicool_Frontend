import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class UiTitleScreen extends StatelessWidget {
  const UiTitleScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 4.v),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(
                flex: 58,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgUser,
                height: 100.adaptSize,
                width: 100.adaptSize,
              ),
              SizedBox(height: 15.v),
              SizedBox(
                width: 240.h,
                child: Text(
                  "원하는 스타일을\n찾아보세요.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.displaySmallNotoSansKROnError,
                ),
              ),
              Spacer(
                flex: 41,
              ),
              SizedBox(
                height: 6.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 6,
                    activeDotColor: theme.colorScheme.onError.withOpacity(1),
                    dotColor: theme.colorScheme.onError,
                    dotHeight: 6.v,
                    dotWidth: 6.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
