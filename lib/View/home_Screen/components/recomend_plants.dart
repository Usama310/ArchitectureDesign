import 'package:architecturedesign/View/details_Screen/details_screen.dart';
import 'package:architecturedesign/Widgets/Constant/Color.dart';
import 'package:flutter/material.dart';

class RecommendsPlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          recommendPlantCard(
            image: "assets/images/image_1.png",
            title: "Usama",
            context: context,
            country: "pakistan",
            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          recommendPlantCard(
            image: "assets/images/image_2.png",
            title: "Pervaiz",
            country: "pakistan",
            price: 440,
            context: context,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          recommendPlantCard(
              image: "assets/images/image_3.png",
              title: "Uzair",
              country: "pakistan",
              price: 440,
              press: () {},
              context: context),
        ],
      ),
    );
  }
}

Widget recommendPlantCard({image, title, country, price, press, context}) {
  Size size = MediaQuery.of(context).size;
  return Container(
    margin: EdgeInsets.only(
      left: DEFAULT_PADDING,
      top: DEFAULT_PADDING / 2,
      bottom: DEFAULT_PADDING * 2.5,
    ),
    width: size.width * 0.4,
    child: Column(
      children: <Widget>[
        Image.asset(image),
        GestureDetector(
          onTap: press,
          child: Container(
            padding: EdgeInsets.all(DEFAULT_PADDING / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
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
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button),
                      TextSpan(
                        text: "$country".toUpperCase(),
                        style: TextStyle(
                          color: GREEN_COLOR.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Text(
                  '\$$price',
                  style: Theme.of(context)
                      .textTheme
                      .button
                      .copyWith(color: GREEN_COLOR),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
