import 'package:architecturedesign/View/home_Screen/components/featurred_plants.dart';
import 'package:architecturedesign/View/home_Screen/components/header_with_seachbox.dart';
import 'package:architecturedesign/View/home_Screen/components/recomend_plants.dart';
import 'package:architecturedesign/View/home_Screen/components/title_with_more_bbtn.dart';
import 'package:architecturedesign/Widgets/Constant/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GREEN_COLOR,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeaderWithSearchBox(),
            TitleWithMoreBtn(title: "Recommended", onTap: () {}),
            RecommendsPlants(),
            TitleWithMoreBtn(title: "Featured Plants", onTap: () {}),
            FeaturedPlants(),
            SizedBox(height: DEFAULT_PADDING),
          ],
        ),
      ),
    );
  }
}
