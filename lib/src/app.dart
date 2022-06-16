import 'package:doniel/src/const/strings.dart';
import 'package:doniel/src/views/views.dart';
import 'package:donieltheme/donieltheme.dart';
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
      theme: themeData,
      title: Strings.appName,
      home: const PageDoniel(),
      routes: Routes.routes,
    );
  }
}
