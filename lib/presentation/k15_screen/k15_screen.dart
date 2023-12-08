import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/widgets/custom_bottom_bar.dart';
import 'package:magicool/widgets/custom_text_form_field.dart';

class K15Screen extends StatelessWidget {
  K15Screen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editTextOneController = TextEditingController();

  TextEditingController editTextTwoController = TextEditingController();

  TextEditingController editTextThreeController = TextEditingController();

  TextEditingController editTextFourController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 17.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildEditTextOne(context),
              SizedBox(height: 30.v),
              _buildEditTextTwo(context),
              SizedBox(height: 30.v),
              _buildEditTextThree(context),
              SizedBox(height: 30.v),
              _buildEditTextFour(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditTextOne(BuildContext context) {
    return CustomTextFormField(
      controller: editTextOneController,
      hintText: "  계정 정보 설정",
      prefix: Container(
        margin: EdgeInsets.fromLTRB(7.h, 16.v, 8.h, 15.v),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgAccountuser,
          height: 23.v,
          width: 21.h,
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
    );
  }

  /// Section Widget
  Widget _buildEditTextTwo(BuildContext context) {
    return CustomTextFormField(
      controller: editTextTwoController,
      hintText: "  냉장고 보안 비밀번호 설정",
      prefix: Container(
        margin: EdgeInsets.fromLTRB(7.h, 14.v, 8.h, 17.v),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgLock,
          height: 23.v,
          width: 21.h,
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
    );
  }

  /// Section Widget
  Widget _buildEditTextThree(BuildContext context) {
    return CustomTextFormField(
      controller: editTextThreeController,
      hintText: "  알림 설정",
      prefix: Container(
        margin: EdgeInsets.fromLTRB(7.h, 13.v, 8.h, 18.v),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgMediaVolumeupfill,
          height: 23.v,
          width: 21.h,
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
    );
  }

  /// Section Widget
  Widget _buildEditTextFour(BuildContext context) {
    return CustomTextFormField(
      controller: editTextFourController,
      hintText: "  시스템 설정",
      textInputAction: TextInputAction.done,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(5.h, 16.v, 5.h, 17.v),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgSystemSettingsline,
          height: 21.v,
          width: 26.h,
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
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
