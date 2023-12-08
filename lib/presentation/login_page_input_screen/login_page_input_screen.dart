import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/widgets/custom_checkbox_button.dart';
import 'package:magicool/widgets/custom_icon_button.dart';
import 'package:magicool/widgets/custom_text_form_field.dart';

class LoginPageInputScreen extends StatelessWidget {
  LoginPageInputScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  bool loginKeepLoggedIn = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 5.h,
                vertical: 52.v,
              ),
              decoration: AppDecoration.fillPrimary,
              child: Column(
                children: [
                  SizedBox(height: 8.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 212.h,
                      margin: EdgeInsets.only(left: 52.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "반가워요 !  \n",
                              style: CustomTextStyles.headlineSmallInter,
                            ),
                            TextSpan(
                              text: "mag⁚Ↄool",
                              style: theme.textTheme.headlineLarge,
                            ),
                            TextSpan(
                              text: "과 함께\n스마트한 일상을 \n시작해요 ",
                              style: CustomTextStyles.headlineSmallInter,
                            ),
                            TextSpan(
                              text: "⁚Ↄ\n",
                              style:
                                  CustomTextStyles.headlineSmallInterBlueA700,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  SizedBox(height: 40.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 52.h),
                      child: Text(
                        "이메일 아이디를 입력하세요",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 52.h,
                      right: 47.h,
                    ),
                    child: CustomTextFormField(
                      controller: emailController,
                      hintText: "abbccc@gmail.com",
                      hintStyle: theme.textTheme.bodyLarge!,
                      textInputType: TextInputType.emailAddress,
                      contentPadding: EdgeInsets.symmetric(horizontal: 7.h),
                      borderDecoration: TextFormFieldStyleHelper.underLineGray,
                      filled: false,
                    ),
                  ),
                  SizedBox(height: 36.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 52.h),
                      child: Text(
                        "비밀번호를 입력하세요",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 52.h,
                      right: 45.h,
                    ),
                    child: CustomTextFormField(
                      controller: editTextController,
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      borderDecoration: TextFormFieldStyleHelper.underLineGray,
                      filled: false,
                    ),
                  ),
                  SizedBox(height: 18.v),
                  _buildLoginKeepLoggedIn(context),
                  SizedBox(height: 21.v),
                  CustomIconButton(
                    height: 58.v,
                    width: 280.h,
                    decoration: IconButtonStyleHelper.fillPrimary,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVectorPrimary,
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "비밀번호를 잊으셨나요?",
                        style: CustomTextStyles.labelLargeNotoSansKRGray700
                            .copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 22.h),
                        child: Text(
                          "회원가입 하기",
                          style: CustomTextStyles.labelLargeNotoSansKRGray700
                              .copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 29.v),
                  _buildSocialMediaRow(context),
                  SizedBox(height: 26.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 76.h,
                      right: 63.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                          height: 54.adaptSize,
                          width: 54.adaptSize,
                          padding: EdgeInsets.all(12.h),
                          decoration: IconButtonStyleHelper.fillYellowA,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGroup17,
                          ),
                        ),
                        Spacer(
                          flex: 50,
                        ),
                        CustomIconButton(
                          height: 54.adaptSize,
                          width: 54.adaptSize,
                          padding: EdgeInsets.all(17.h),
                          decoration: IconButtonStyleHelper.fillGreenA,
                          child: CustomImageView(
                            imagePath: ImageConstant.img,
                          ),
                        ),
                        Spacer(
                          flex: 50,
                        ),
                        CustomIconButton(
                          height: 54.adaptSize,
                          width: 54.adaptSize,
                          padding: EdgeInsets.all(12.h),
                          decoration: IconButtonStyleHelper.outlineBlackTL42,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGroup16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginKeepLoggedIn(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 56.h),
        child: CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "로그인 유지",
          value: loginKeepLoggedIn,
          onChange: (value) {
            loginKeepLoggedIn = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSocialMediaRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              bottom: 8.v,
            ),
            child: SizedBox(
              width: 91.h,
              child: Divider(),
            ),
          ),
          Text(
            "SNS 간편 로그인하기",
            style: CustomTextStyles.titleMediumInter,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 8.v,
            ),
            child: SizedBox(
              width: 91.h,
              child: Divider(),
            ),
          ),
        ],
      ),
    );
  }
}
