import 'package:architecturedesign/Widgets/Constant/Color.dart';
import 'package:architecturedesign/Widgets/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HeaderWithSearchBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: DEFAULT_PADDING * 2.5),
      height: SizeConfig.heightMultiplier * 7,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: DEFAULT_PADDING,
              right: DEFAULT_PADDING,
              bottom: 36 + DEFAULT_PADDING,
            ),
            height: SizeConfig.heightMultiplier * 2,
            decoration: BoxDecoration(
              color: GREEN_COLOR,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Hi USAMA PERVAIZ!',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Image.asset("assets/images/logo.png")
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: DEFAULT_PADDING),
              padding: EdgeInsets.symmetric(horizontal: DEFAULT_PADDING),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: GREEN_COLOR.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: GREEN_COLOR.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
