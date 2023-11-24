import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';

class Iphone12MiniScreenReplaceThisScreen extends StatelessWidget {
  const Iphone12MiniScreenReplaceThisScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 908.v,
          width: 419.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgReplaceThisScreen,
                height: 908.v,
                width: 419.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 908.v,
                    width: 419.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
