import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';

class K24Screen extends StatelessWidget {
  const K24Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 464.h,
          child: Column(
            children: [
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: ImageConstant.imgImage4450x464,
                height: 450.v,
                width: 464.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
