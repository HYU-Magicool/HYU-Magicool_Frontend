import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';

// ignore_for_file: must_be_immutable
class K31Page extends StatelessWidget {
  const K31Page({Key? key})
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
          decoration: AppDecoration.fillOnError,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 41.h,
              vertical: 48.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 7.v),
                Container(
                  width: 276.h,
                  margin: EdgeInsets.only(
                    left: 7.h,
                    right: 8.h,
                  ),
                  child: Text(
                    "정유빈님!  <쿠팡> 에서 주문한 상품은 다음과 같습니다. ",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumArialPrimary.copyWith(
                      height: 1.20,
                    ),
                  ),
                ),
                SizedBox(height: 15.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 181.v,
                    width: 278.h,
                    margin: EdgeInsets.only(left: 3.h),
                    decoration: BoxDecoration(
                      color: appTheme.blueGray100,
                    ),
                  ),
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  height: 67.v,
                  child: VerticalDivider(
                    width: 2.h,
                    thickness: 2.v,
                    color: theme.colorScheme.primary.withOpacity(1),
                  ),
                ),
                SizedBox(height: 9.v),
                Container(
                  height: 249.v,
                  width: 287.h,
                  decoration: BoxDecoration(
                    color: appTheme.blueGray100,
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
