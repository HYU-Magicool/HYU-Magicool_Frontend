import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/widgets/app_bar/appbar_leading_image.dart';
import 'package:magicool/widgets/app_bar/appbar_title.dart';
import 'package:magicool/widgets/app_bar/custom_app_bar.dart';
import 'package:magicool/widgets/custom_bottom_bar.dart';
import 'package:magicool/widgets/custom_elevated_button.dart';

class DeviceTabScreen extends StatelessWidget {
  DeviceTabScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 59.h,
            vertical: 34.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.v),
              SizedBox(
                height: 244.adaptSize,
                width: 244.adaptSize,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: 163.h,
                        margin: EdgeInsets.only(bottom: 70.v),
                        child: Text(
                          "[쿠팡]  10 : 00 ~ 11 : 00 도착예정입니다.  ",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.headlineSmallPrimary.copyWith(
                            height: 1.08,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 163.h,
                        child: Text(
                          "[쿠팡]  10 : 00 ~ 11 : 00 도착 예정입니다.  ",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.headlineSmallPrimary.copyWith(
                            height: 1.08,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 244.v,
                        width: 238.h,
                        decoration: BoxDecoration(
                          color: appTheme.blueGray100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomElevatedButton(
                height: 48.v,
                text: "제품 등록하기",
                margin: EdgeInsets.only(
                  left: 21.h,
                  right: 22.h,
                ),
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(right: 3.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 59.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconOnerrorcontainer,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 11.v,
          bottom: 11.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "제품 추가",
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
