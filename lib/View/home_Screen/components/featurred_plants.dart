import 'package:architecturedesign/Widgets/Constant/Color.dart';
import 'package:architecturedesign/Widgets/size_config.dart';
import 'package:flutter/material.dart';

class FeaturedPlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: featurePlantCard(
                image: "assets/images/bottom_img_1.png",
                press: () {},
                context: context),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: featurePlantCard(
                image: "assets/images/bottom_img_2.png",
                press: () {},
                context: context),
          ),
        ],
      ),
    );
  }

  Widget featurePlantCard({image, press, context}) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: DEFAULT_PADDING,
          top: DEFAULT_PADDING / 2,
          bottom: DEFAULT_PADDING / 2,
        ),
        width: SizeConfig.widthMultiplier * 50,
        height: SizeConfig.heightMultiplier * 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
