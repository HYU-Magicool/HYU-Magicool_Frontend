import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/widgets/custom_bottom_bar.dart';
import 'package:magicool/widgets/custom_elevated_button.dart';
import 'package:magicool/widgets/custom_switch.dart';

class OScreen extends StatelessWidget {
  OScreen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 29.h,
            vertical: 26.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "이지엘 님 의 HOME",
                style: CustomTextStyles.headlineLargeNotoSansBlack900_1,
              ),
              SizedBox(height: 11.v),
              Container(
                margin: EdgeInsets.only(left: 3.h),
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 19.v),
                      child: Column(
                        children: [
                          Text(
                            "제품 관리",
                            style: CustomTextStyles
                                .bodyMediumRobotoOnErrorContainer,
                          ),
                          SizedBox(height: 11.v),
                          SizedBox(
                            width: 55.h,
                            child: Divider(
                              color: theme.colorScheme.onErrorContainer,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 19.v,
                        bottom: 13.v,
                      ),
                      child: Text(
                        "식품 관리",
                        style:
                            CustomTextStyles.bodyMediumRobotoOnErrorContainer,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              _buildProperty1Active(context),
              SizedBox(height: 42.v),
              _buildSeventeen(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildProperty1Active(BuildContext context) {
    return Container(
      width: 301.h,
      margin: EdgeInsets.symmetric(horizontal: 7.h),
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 29.v,
      ),
      decoration: AppDecoration.gradientBlueAToErrorContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 163.h,
                  margin: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "냉장실  온도가 잘 유지되고 있어요. ",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallNotoSansBlack900,
                  ),
                ),
                CustomElevatedButton(
                  width: 62.h,
                  text: "3 ℃",
                  margin: EdgeInsets.only(
                    left: 13.h,
                    bottom: 31.v,
                  ),
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.titleSmallBlack900,
                ),
              ],
            ),
          ),
          SizedBox(height: 26.v),
          Align(
            alignment: Alignment.center,
            child: Divider(
              indent: 7.h,
              endIndent: 6.h,
            ),
          ),
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 163.h,
                  margin: EdgeInsets.only(top: 3.v),
                  child: Text(
                    "냉동실  온도가 잘 유지되고 있어요. ",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallNotoSansBlack900,
                  ),
                ),
                Container(
                  width: 62.h,
                  margin: EdgeInsets.only(
                    left: 13.h,
                    bottom: 33.v,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "-18",
                          style: CustomTextStyles.titleMediumRoboto,
                        ),
                        TextSpan(
                          text: " ℃",
                          style: CustomTextStyles.titleMediumRobotoBold,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventeen(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7.h),
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillBluegray100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 1.v,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgProIcon,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 3.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "냉장고 Lock",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          CustomSwitch(
            margin: EdgeInsets.only(top: 1.v),
            value: isSelectedSwitch,
            onChange: (value) {
              isSelectedSwitch = value;
            },
          ),
        ],
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
