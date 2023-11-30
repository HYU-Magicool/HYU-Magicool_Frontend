import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/presentation/k20_page/k20_page.dart';
import 'package:magicool/presentation/k8_page/k8_page.dart';
import 'package:magicool/widgets/custom_bottom_bar.dart';
import 'package:magicool/widgets/custom_text_form_field.dart';

class K21Screen extends StatelessWidget {
  K21Screen({Key? key})
      : super(
          key: key,
        );

  TextEditingController toastVariantFiveController = TextEditingController();

  TextEditingController toastVariantFiveController1 = TextEditingController();

  TextEditingController toastVariantFiveController2 = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 48.v),
              _buildSystemSettingsLine(context),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 9.h),
                child: CustomTextFormField(
                  controller: toastVariantFiveController,
                  hintText: "  계정 정보 설정",
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(7.h, 14.v, 7.h, 17.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgAccountuser,
                      height: 23.adaptSize,
                      width: 23.adaptSize,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 54.v,
                  ),
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 15.v, 8.h, 15.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgChevronarrowleft,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 54.v,
                  ),
                ),
              ),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 9.h),
                child: CustomTextFormField(
                  controller: toastVariantFiveController1,
                  hintText: "  냉장고 보안 비밀번호 설정",
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(8.h, 14.v, 7.h, 17.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgLock,
                      height: 23.adaptSize,
                      width: 23.adaptSize,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 54.v,
                  ),
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 15.v, 8.h, 15.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgChevronarrowleft,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 54.v,
                  ),
                ),
              ),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 9.h),
                child: CustomTextFormField(
                  controller: toastVariantFiveController2,
                  hintText: "  알림 설정",
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(8.h, 13.v, 6.h, 18.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMediaVolumeupfill,
                      height: 23.adaptSize,
                      width: 23.adaptSize,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 54.v,
                  ),
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 15.v, 8.h, 15.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgChevronarrowleft,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 54.v,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSystemSettingsLine(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillBluegray100,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSystemSettingsLine,
            height: 18.v,
            width: 24.h,
            margin: EdgeInsets.only(top: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 1.v,
            ),
            child: Text(
              "설정",
              style: CustomTextStyles.bodySmallRobotoBlack900,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Wallet:
        return AppRoutes.k8Page;
      case BottomBarEnum.Analysis:
        return "/";
      case BottomBarEnum.User:
        return AppRoutes.k20Page;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.k8Page:
        return K8Page();
      case AppRoutes.k20Page:
        return K20Page();
      default:
        return DefaultWidget();
    }
  }
}
