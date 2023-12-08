import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/widgets/custom_bottom_bar.dart';
import 'package:magicool/widgets/custom_elevated_button.dart';
import 'package:magicool/widgets/custom_text_form_field.dart';

class K14Screen extends StatelessWidget {
  K14Screen({Key? key})
      : super(
          key: key,
        );

  TextEditingController group7Controller = TextEditingController();

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
            horizontal: 26.h,
            vertical: 14.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 17.v),
              SizedBox(
                width: 319.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "이지엘 님 ! ",
                        style: CustomTextStyles.headlineLargeNotoSansBlack900,
                      ),
                      TextSpan(
                        text: "11. 20 <쿠팡> 에서 주문한 상품 목록 입니다",
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 13.v),
              Container(
                width: 278.h,
                margin: EdgeInsets.symmetric(horizontal: 22.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 38.v,
                ),
                decoration: AppDecoration.fillBluegray100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 19.v),
                    Container(
                      width: 224.h,
                      margin: EdgeInsets.only(right: 7.h),
                      child: Text(
                        "계란 30구, 다진 마늘,  초코우유, 카페라떼, 시금치, 마라탕 밀키트",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleLargeNotoSans_1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 11.v),
              CustomElevatedButton(
                height: 51.v,
                text: "AI가 추천하는 건강 식재료",
                margin: EdgeInsets.symmetric(horizontal: 30.h),
                buttonStyle: CustomButtonStyles.fillRed,
                buttonTextStyle: CustomTextStyles.titleLargeNotoSans,
              ),
              SizedBox(height: 11.v),
              Container(
                width: 287.h,
                margin: EdgeInsets.only(
                  left: 21.h,
                  right: 15.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 22.h,
                  vertical: 2.v,
                ),
                decoration: AppDecoration.fillRed,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 14.v),
                    Container(
                      width: 230.h,
                      margin: EdgeInsets.only(right: 12.h),
                      child: Text(
                        "초코우유 -> 다크 초콜릿이나 코코넛 물을 섞어 마실 수 있습니다. 다크 초콜릿은 칼로리가 낮고 항산화제를 함유하고 있어 건강에 도움을 줄 수 있으며, 코코넛 물은 전자분이 많아 체내 수분을 공급해 줄 수 있습니다. 카페라떼 -> 커피 대신 녹차나 허브 차를 선택해보세요. 녹차는 항산화 제와 카테킨을 함유하고 있어 건강에 도움을 줄 수 있으며, 허브 차도 다양한 허브의 효능을 이용하여 건강에 도움을 줄 수 있습니다. ... ",
                        maxLines: 12,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumNotoSansBlack900,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7.v),
              Padding(
                padding: EdgeInsets.only(right: 15.h),
                child: CustomTextFormField(
                  width: 118.h,
                  controller: group7Controller,
                  hintText: "결과 더보기  >",
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.centerRight,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 11.h,
                    vertical: 3.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillPrimary,
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
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
