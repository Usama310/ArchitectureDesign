import 'package:architecturedesign/Widgets/Constant/Color.dart';
import 'package:architecturedesign/Widgets/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconCard extends StatelessWidget {
  final String icon;
  const IconCard({
    this.icon,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 3),
      padding: EdgeInsets.all(DEFAULT_PADDING / 2),
      height: SizeConfig.heightMultiplier*5,
      width: SizeConfig.widthMultiplier*10,
      decoration: BoxDecoration(
        color: WHITE_COLOR,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 22,
            color: GREEN_COLOR.withOpacity(0.22),
          ),
          BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white,
          ),
        ],
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
