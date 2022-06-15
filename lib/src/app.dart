import 'package:doniel/src/views/screens/loginscreens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'const/routes.dart';

class Doniel extends StatelessWidget {
  const Doniel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      systemNavigationBarColor: Colors.transparent,
      statusBarColor: Colors.transparent,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreens(),
      routes: Routes.routes,
    );
  }
}
