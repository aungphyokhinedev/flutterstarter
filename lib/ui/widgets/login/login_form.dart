
import 'package:barlarlar/ui/themes/custom_theme.dart';
import 'package:barlarlar/ui/widgets/common/cricle_button_widget.dart';
import 'package:barlarlar/ui/widgets/common/inherited_data_provider.dart';
import 'package:barlarlar/ui/widgets/common/input_text_widget.dart';
import 'package:barlarlar/ui/widgets/common/rounded_button.dart';
import 'package:barlarlar/ui/widgets/common/rounded_rect_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';



class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     final _store = InheritedDataProvider.of(context).store;

    return 
    Container(
      color: CustomTheme.of(context).backgroundColor,
      child: 
    Column(
      children: <Widget>[
      
        Column(
          
          children: <Widget>[
            ///holds email header and inputField
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[


                
                Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    Column(children: <Widget>[
                 
                    ],)
                    ,
                    Padding(
                        padding: EdgeInsets.only(right: 50),
                        child: Row(
                          children: <Widget>[
                           
                           
                          ],
                        ))
                  ],
                ),
              ],
            ),
           
           RoundedButtonWidget(
              ()async{
                final facebookLogin = FacebookLogin();
                final result = await facebookLogin.logIn(['email']);

                switch (result.status) {
                  case FacebookLoginStatus.loggedIn:
                    print(result.accessToken);
                    _store.authModel.socialRegister(result.accessToken.token, 'facebook');
                    break;
                  case FacebookLoginStatus.cancelledByUser:
                    print("cancel");
                    break;
                  case FacebookLoginStatus.error:
                    print("error");
                    break;
                }
                await facebookLogin.logOut();
              },
              "Facebook Signin",
              MediaQuery.of(context).size.width / 1.8,
              true,
              "assets/facebook_logo.png"
            ),
              RoundedButtonWidget(
               () async {
                final _googleSignIn = GoogleSignIn(scopes: ['email']);
                var _result = await _googleSignIn.signIn();
                var _auth = await _googleSignIn.currentUser.authentication;
                _store.authModel.socialRegister(_auth.accessToken, 'google');
                print(_result);
              },
              "Google Signin",
              MediaQuery.of(context).size.width / 1.8,
              true,
              "assets/google_logo.png"
            ),
          ],
        )
      ],
    )
    ,);
  }
}



const List<Color> facebookGradients = [
  Color(0xFF0EDED2),
  Color(0xFF03A0FE),
];

const List<Color> googleGradients = [
  Color(0xFFFF9945),
  Color(0xFFFc6076),
];

const List<Color> signUpGradients = [
  Color(0xFF0EDED2),
  Color(0xEE71B280),
];