import 'package:barlarlar/model/stores/base_model.dart';
import 'package:barlarlar/ui/widgets/common/inherited_data_provider.dart';
import 'package:barlarlar/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'login.dart';

/// This is the main method of app, from here execution starts.
/// App widget class

class Splash extends StatelessWidget {
  //making list of pages needed to pass in IntroViewsFlutter constructor.

  @override
  Widget build(BuildContext context) {
    final _store = InheritedDataProvider.of(context).store;
    SizeConfig().init(context);

    new Future.delayed(const Duration(milliseconds: 1000), () async {
      await _store.baseModel.init();
      _store.baseModel.setLoading(true);
    });

    return Observer(builder: (_) {
      if (_store.baseModel.isLoaded == null) {
        return Container(
          color: Colors.white,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/cybernetics.png",
                width: SizeConfig.blockSizeVertical * 12.0,
                colorBlendMode: BlendMode.overlay,
              ),
            ],
          )),
        );
      }

      return LoginPage();
    }); 
  }
}
