import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class AppbarTitleEdittext extends StatelessWidget {
  AppbarTitleEdittext({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomTextFormField(
        width: 282.h,
        controller: controller,
        hintText: "nugu를 연동해주세요.",
        prefix: Container(
          margin: EdgeInsets.all(8.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgIconOnerrorcontainer,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 32.v,
        ),
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 8.v, 8.h, 8.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgRemoveclosex,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 32.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.fillRed,
        fillColor: appTheme.red100,
      ),
    );
  }
}
