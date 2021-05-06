import 'package:architecturedesign/View/contact_us/contact_us_Screen.dart';
import 'package:architecturedesign/View/home_Screen/home_screen.dart';
import 'package:architecturedesign/Widgets/Constant/Color.dart';
import 'package:architecturedesign/Widgets/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBarScreen> {
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.home),
          title: ("Home"),
          activeColorPrimary: GREEN_COLOR,
          inactiveColorPrimary: CupertinoColors.systemGrey,
          iconSize: SizeConfig.textMultiplier * 3),
      PersistentBottomNavBarItem(
          icon: Icon(
            CupertinoIcons.heart,
          ),
          title: ("Favourite"),
          activeColorPrimary: GREEN_COLOR,
          inactiveColorPrimary: CupertinoColors.systemGrey,
          iconSize: SizeConfig.textMultiplier * 3),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person),
        title: ("Contact"),
        activeColorPrimary: GREEN_COLOR,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        iconSize: SizeConfig.textMultiplier * 3,
      ),
    ];
  }

  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      HomeScreen(),
      ContactUsScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,

      backgroundColor: WHITE_COLOR,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears.
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(20.0),
        colorBehindNavBar: WHITE_COLOR,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),

      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }
}
