import 'package:barlarlar/ui/themes/custom_theme.dart';
import 'package:barlarlar/ui/themes/theme.dart';
import 'package:barlarlar/ui/widgets/common/inherited_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';

import 'model/stores/store.dart';
import 'ui/screens/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GlobalConfiguration().loadFromAsset("app_settings");
  runApp(
    CustomTheme(
      initialThemeKey: ThemeKeys.LIGHT,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final store = Store();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Barlarlar',
        theme: CustomTheme.of(context),
        home: InheritedDataProvider(
          child: Splash(),
          store: store,
        ));
  }
}
