import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  
  final double width;
  final double topBorderRadius;
  final double bottomBorderRadius;
  final String hintText;
  InputTextWidget(this.width,this.topBorderRadius, this.bottomBorderRadius,this.hintText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        child: Material(
          elevation: 3,
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(bottomBorderRadius),
                  bottomLeft: Radius.circular(bottomBorderRadius),
                  topRight: Radius.circular(topBorderRadius),
                  topLeft: Radius.circular(topBorderRadius))),
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom:5),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: TextStyle(color: Color(0xFFE1E1E1), fontSize: 14)),
            ),
          ),
        ),
      );
  }
}