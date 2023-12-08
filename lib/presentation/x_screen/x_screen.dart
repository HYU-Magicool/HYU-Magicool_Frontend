import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
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
              SizedBox(height: 93.v),
              Container(
                width: 149.h,
                margin: EdgeInsets.only(left: 78.h),
                child: Text(
                  "냉장고를 추가해서 다양한 기능을  활용할 수 있어요!",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleLargeNotoSansBold,
                ),
              ),
              SizedBox(height: 30.v),
              CustomElevatedButton(
                height: 48.v,
                width: 214.h,
                text: "냉장고 추가하기",
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
      onChanged: (BottomBarEnum type) {},
    );
  }
}
