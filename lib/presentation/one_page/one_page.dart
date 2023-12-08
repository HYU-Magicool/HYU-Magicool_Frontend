import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';
import 'package:magicool/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class OnePage extends StatelessWidget {
  const OnePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Container(
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
                Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 27.v,
                    width: 118.h,
                    margin: EdgeInsets.only(right: 15.h),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
