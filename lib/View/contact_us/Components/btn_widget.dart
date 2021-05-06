import 'package:architecturedesign/Widgets/Constant/Color.dart';
import 'package:architecturedesign/Widgets/size_config.dart';
import 'package:flutter/material.dart';

class BtnWidget extends StatelessWidget {
  final String title;
  const BtnWidget({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: SizeConfig.heightMultiplier * 8,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            GREEN_COLOR,
            GREEN_COLOR,
          ],
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: LITE_BLACK_COLOR,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
