import 'package:architecturedesign/Widgets/Constant/Color.dart';
import 'package:architecturedesign/Widgets/size_config.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final bool isMaxLine;
  final TextEditingController textEditingController;
  const TextFieldWidget(
      {this.hintText, this.isMaxLine, this.textEditingController});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 42,
      height: isMaxLine
          ? SizeConfig.heightMultiplier * 20
          : SizeConfig.heightMultiplier * 10,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: TextFormField(
          maxLines: isMaxLine ? 5 : 1,
          controller: textEditingController,
          decoration: InputDecoration(
              fillColor: Colors.white,
              border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(8.0),
                borderSide: new BorderSide(
                  color: GREEN_COLOR,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: new BorderRadius.circular(8.0),
                borderSide: new BorderSide(
                  color: GREEN_COLOR,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: new BorderRadius.circular(8.0),
                borderSide: new BorderSide(
                  color: GREEN_COLOR,
                ),
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                color: LITE_BLACK_COLOR,
              )),
        ),
      ),
    );
  }
}
