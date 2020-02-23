import 'package:flutter/material.dart';

class RoundedButtonWidget extends StatelessWidget {
  final Function() callback;
  final String title;
  final double width;
  final bool isEndIconVisible;
  final String iconPath;

  RoundedButtonWidget(this.callback,this.title, this.width, this.isEndIconVisible, this.iconPath);

  @override
  Widget build(BuildContext context) {
    return 
    
     Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Stack(
        alignment: Alignment(1.0, 0.0),
        children: <Widget>[
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
          InkWell(
          onTap: () {
             callback();
          },
          
          child:
          Container(
            alignment: Alignment.center,
            width: width,
            decoration: ShapeDecoration(
              color:Colors.grey[100],
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black12 ),
                  borderRadius: BorderRadius.circular(30.0)),
        
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               Visibility(
            visible: isEndIconVisible,
            child: Padding(
                padding: EdgeInsets.only(left: 0),
                child: ImageIcon(
                  AssetImage(iconPath),
                  size: 30,
                  color: Colors.blueGrey,
                )),
          ),
               Text(title,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 17,
                    fontWeight: FontWeight.w500)),
            ],),
            
            
            padding: EdgeInsets.only(top: 5, bottom: 5),
          )
          ),
        
        ],
      ),
    
    );
  }
}
