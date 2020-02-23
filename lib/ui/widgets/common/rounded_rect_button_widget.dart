import 'package:flutter/material.dart';

class RoundedRectButtonWidget extends StatelessWidget {
  final Function() callback;
  final String title;
  final double width;
  final List<Color> gradient;
  final bool isEndIconVisible;
  final String iconPath;

  RoundedRectButtonWidget(this.callback,this.title, this.width, this.gradient, this.isEndIconVisible, this.iconPath);

  @override
  Widget build(BuildContext context) {
    return 
    
     Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Stack(
        alignment: Alignment(1.0, 0.0),
        children: <Widget>[
          InkWell(
          onTap: () {
             callback();
          },
          child:
          Container(
            alignment: Alignment.center,
            width: width,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              gradient: LinearGradient(
                  colors: gradient,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
            child: Text(title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            padding: EdgeInsets.only(top: 16, bottom: 16),
          )
          ),
          Visibility(
            visible: isEndIconVisible,
            child: Padding(
                padding: EdgeInsets.only(right: 10),
                child: ImageIcon(
                  AssetImage(iconPath),
                  size: 30,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    
    );
  }
}
