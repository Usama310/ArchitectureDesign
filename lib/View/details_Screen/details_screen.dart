import 'package:architecturedesign/View/details_Screen/components/image_and_icons.dart';
import 'package:architecturedesign/View/details_Screen/components/title_and_price.dart';
import 'package:architecturedesign/Widgets/Constant/Color.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ImageAndIcons(),
            TitleAndPrice(title: "USAMA", country: "Pakistan", price: 440),
            SizedBox(height: DEFAULT_PADDING),
            Row(
              children: <Widget>[
                SizedBox(
                  width: size.width / 2,
                  height: 84,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                    color: GREEN_COLOR,
                    onPressed: () {},
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text("Description"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
