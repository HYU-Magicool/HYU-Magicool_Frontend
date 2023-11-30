import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/presentation/k20_page/k20_page.dart';
import 'package:magicool/presentation/k8_page/k8_page.dart';
import 'package:magicool/widgets/custom_bottom_bar.dart';
import 'package:magicool/widgets/custom_elevated_button.dart';

class XScreen extends StatelessWidget {
  XScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 39.h,
            vertical: 33.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "정유빈 님 의 HOME",
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 96.v),
              Container(
                width: 149.h,
                margin: EdgeInsets.only(left: 68.h),
                child: Text(
                  "냉장고를 추가해서 다양한 기능을  만나보아요!",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleLargeAdventPro,
                ),
              ),
              SizedBox(height: 35.v),
              CustomElevatedButton(
                height: 48.v,
                text: "냉장고 추가하기",
                margin: EdgeInsets.only(
                  left: 41.h,
                  right: 40.h,
                ),
                buttonStyle: CustomButtonStyles.fillBlueGray,
                buttonTextStyle: CustomTextStyles.titleLargeAdventPro,
                alignment: Alignment.center,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
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
