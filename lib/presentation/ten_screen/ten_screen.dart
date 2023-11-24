import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/widgets/custom_text_form_field.dart';

class TenScreen extends StatelessWidget {
  TenScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController bannerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: 685.h,
          child: Container(
            padding: EdgeInsets.all(32.h),
            decoration: AppDecoration.fillGray,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 4.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Publish your Team Library",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 10.v),
                _buildDescription(context),
                SizedBox(height: 22.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomImageView(
                        imagePath: ImageConstant.img10,
                        height: 252.v,
                        width: 298.h,
                        margin: EdgeInsets.only(right: 12.h),
                      ),
                    ),
                    Expanded(
                      child: CustomImageView(
                        imagePath: ImageConstant.img10252x298,
                        height: 252.v,
                        width: 298.h,
                        margin: EdgeInsets.only(left: 12.h),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.v),
                CustomTextFormField(
                  controller: bannerController,
                  hintText:
                      "Only Education, Professional, or Organization teams can publish components.",
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(12.h, 12.v, 6.h, 12.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgInfo,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 40.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillYellowA,
                  fillColor: appTheme.yellowA400,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDescription(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 48.v,
          width: 293.h,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Align(
                alignment: Alignment.center,
                child: Opacity(
                  opacity: 0.8,
                  child: SizedBox(
                    width: 293.h,
                    child: Text(
                      "To share the new styles and components you created in this file with team members, you need to publish this file. Click on         in the Assets panel to the top left.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallPrimary_1.copyWith(
                        height: 1.45,
                      ),
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgIconPrimary12x18,
                height: 12.v,
                width: 18.h,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(
                  left: 69.h,
                  bottom: 2.v,
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 6.adaptSize,
                  width: 6.adaptSize,
                  margin: EdgeInsets.only(
                    left: 83.h,
                    bottom: 10.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.blue500,
                    borderRadius: BorderRadius.circular(
                      3.h,
                    ),
                    border: Border.all(
                      color: theme.colorScheme.onError.withOpacity(1),
                      width: 2.h,
                      strokeAlign: strokeAlignOutside,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 298.h,
          margin: EdgeInsets.only(left: 28.h),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Then, click on ",
                  style: CustomTextStyles.bodySmallPrimary,
                ),
                TextSpan(
                  text:
                      "Publish next to the current file. You’ll have a chance to review your components, styles, and to add a description for your updates. ",
                  style: CustomTextStyles.labelMediumPrimary,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
