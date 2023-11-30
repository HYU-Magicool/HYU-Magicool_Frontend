import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/presentation/k20_page/k20_page.dart';
import 'package:magicool/presentation/k8_page/k8_page.dart';
import 'package:magicool/widgets/custom_bottom_bar.dart';
import 'package:magicool/widgets/custom_search_view.dart';
import 'package:magicool/widgets/custom_switch.dart';

class K19Screen extends StatelessWidget {
  K19Screen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  bool isSelectedSwitch = false;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 37.h,
            vertical: 33.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "정유빈 님 의 HOME",
                    style: theme.textTheme.headlineLarge,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "검색하기 (내 냉장고 추가하기)",
                    style: CustomTextStyles.titleSmallAdventProBlack900,
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              CustomSearchView(
                controller: searchController,
                hintText: "Search",
              ),
              SizedBox(height: 36.v),
              Container(
                width: 301.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 16.v,
                ),
                decoration: AppDecoration.fillBluegray100,
                child: Text(
                  "냉장고 온도 조절 ",
                  style: CustomTextStyles.titleSmallAdventProBlack900,
                ),
              ),
              SizedBox(height: 37.v),
              _buildFortyOne(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyOne(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillBluegray100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgProIcon,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 11.h,
              top: 1.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 4.v,
              bottom: 3.v,
            ),
            child: Text(
              "냉장고 Lock",
              style: CustomTextStyles.bodyMediumRobotoOnErrorContainer,
            ),
          ),
          Spacer(),
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
