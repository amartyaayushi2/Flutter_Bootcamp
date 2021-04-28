// import 'results_page.dart';
import 'constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.bottomText, this.onPress});
  final String bottomText;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Center(
          child: Text(
            bottomText,
            style: kLargeButtonText,
          ),
        ),
        decoration: BoxDecoration(
          color: Color(0xFFEB1555),
          borderRadius: BorderRadius.circular(5),
        ),
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: kBottomContainerHieght,
      ),
      onTap: onPress,
    );
  }
}
