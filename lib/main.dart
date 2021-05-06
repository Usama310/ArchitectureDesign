import 'package:architecturedesign/View/bottom_navigation_bar_Screen/bottom_nav_bar.dart';
import 'package:architecturedesign/View/home_Screen/home_screen.dart';
import 'package:architecturedesign/Widgets/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Architecture Design",
          home: BottomNavigationBarScreen(),
        );
      });
    });
  }
}