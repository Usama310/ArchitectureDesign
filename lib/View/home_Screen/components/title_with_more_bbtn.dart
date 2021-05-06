import 'package:architecturedesign/Widgets/Constant/Color.dart';
import 'package:architecturedesign/Widgets/size_config.dart';
import 'package:flutter/material.dart';

class TitleWithMoreBtn extends StatelessWidget {
  final String title;
  final Function onTap;
  const TitleWithMoreBtn({
    this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: DEFAULT_PADDING),
      child: Row(
        children: <Widget>[
          titleWithCustomUnderline(text: title),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: GREEN_COLOR,
            onPressed: onTap,
            child: Text(
              "More",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

Widget titleWithCustomUnderline({context, text}) {
  return Container(
    height: SizeConfig.heightMultiplier*5,
    child: Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: DEFAULT_PADDING / 4),
          child: Text(
            text,
            style: TextStyle(fontSize: SizeConfig.textMultiplier*2.6, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: DEFAULT_PADDING / 4),
          height: SizeConfig.heightMultiplier*2,
          color: GREEN_COLOR.withOpacity(0.2),
        )
      ],
    ),
  );
}
