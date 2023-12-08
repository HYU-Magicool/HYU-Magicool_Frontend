import 'package:flutter/material.dart';
import 'package:magicool/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHomeLinear,
      activeIcon: ImageConstant.imgHomeLinear,
      title: "Report",
      type: BottomBarEnum.Report,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgWallet,
      activeIcon: ImageConstant.imgWallet,
      title: "Report",
      type: BottomBarEnum.Report,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavReport,
      activeIcon: ImageConstant.imgNavReport,
      title: "Report",
      type: BottomBarEnum.Report,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser,
      activeIcon: ImageConstant.imgUser,
      title: "Report",
      type: BottomBarEnum.Report,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(6.h),
          topRight: Radius.circular(6.h),
          bottomLeft: Radius.circular(26.h),
          bottomRight: Radius.circular(26.h),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 24.adaptSize,
              width: 24.adaptSize,
              color: appTheme.indigo200,
            ),
            activeIcon: Container(
              decoration: AppDecoration.outlineIndigoA,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    color: appTheme.indigoA400,
                    margin: EdgeInsets.only(top: 13.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 12.v,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: appTheme.indigoA400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Report,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
