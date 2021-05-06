import 'package:architecturedesign/Widgets/Constant/Color.dart';
import 'package:architecturedesign/Widgets/size_config.dart';
import 'package:flutter/material.dart';

class TitleAndPrice extends StatelessWidget {
  final String title, country;
  final int price;
  const TitleAndPrice({
    this.title,
    this.country,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: DEFAULT_PADDING),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: LITE_BLACK_COLOR, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: country,
                  style: TextStyle(
                    fontSize: SizeConfig.textMultiplier * 2.2,
                    color: GREEN_COLOR,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: GREEN_COLOR),
          )
        ],
      ),
    );
  }
}
