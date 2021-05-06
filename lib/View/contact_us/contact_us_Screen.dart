import 'package:architecturedesign/View/contact_us/Components/btn_widget.dart';
import 'package:architecturedesign/View/contact_us/Components/text_field_widget.dart';
import 'package:architecturedesign/Widgets/Constant/Color.dart';
import 'package:architecturedesign/Widgets/size_config.dart';
import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
 final TextEditingController nameController = new TextEditingController();
 final TextEditingController messageController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WHITE_COLOR,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: WHITE_COLOR,
        title: Text(
          "Contact Us",
          style: TextStyle(
            color: SEA_GREEN_COLOR,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: SizeConfig.heightMultiplier * 5,
              ),
              Text(
                "Your Responce is Importamt to Us!",
                style: TextStyle(
                  color: SEA_GREEN_COLOR,
                  fontSize: SizeConfig.textMultiplier * 3,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  "Do You have any question? We would",
                  style: TextStyle(
                    color: GREY_COLOR,
                  ),
                ),
              ),
              Text(
                "love to hear from you!",
                style: TextStyle(
                  color: GREY_COLOR,
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(
                      color: GREY_COLOR,
                    ),
                  ),
                  TextFieldWidget(
                    hintText: "i.e.John Doe",
                    isMaxLine: false,
                    textEditingController: nameController,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 5,
                  ),
                  Text(
                    "Message",
                    style: TextStyle(
                      color: GREY_COLOR,
                    ),
                  ),
                  TextFieldWidget(
                    hintText: "Write in details...",
                    isMaxLine: true,
                    textEditingController: messageController,
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 10,
              ),
              BtnWidget(
                title: "Submit",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
