import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.childIcon, this.onPresses});
  final IconData childIcon;
  final Function onPresses;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(childIcon),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      // elevation: 6.0,
      onPressed: onPresses,
    );
  }
}
