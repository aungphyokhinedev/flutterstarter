import 'package:barlarlar/ui/widgets/login/login_form.dart';
import 'package:barlarlar/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  @override
  Widget build(BuildContext context) {
      SizeConfig().init(context);
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
           // Background(),

            Column(children: <Widget>[
                SizedBox(height: 80,),
              Image.asset(
                "assets/images/barlarlar_01.png",
                width: SizeConfig.blockSizeVertical *15.0,
                colorBlendMode: BlendMode.overlay,
              ),
            SizedBox(height: 30,),
                Text(
                    "Welcome to",
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  Text(
                    "BarLarLar",
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500, color:  Colors.black87),
                  ),
                   SizedBox(height: 10,),
                    Text(
                    "Probably, You have never tried this before",
                    style: TextStyle(fontSize: 16, color:  Colors.black45),
                  ),
                    Text(
                    "Develop with love",
                    style: TextStyle(fontSize: 16, color:  Colors.black45),
                  ),
            ],),
              
            Login(),
          ],
        ));
  }
}