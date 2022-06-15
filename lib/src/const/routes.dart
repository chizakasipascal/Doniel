import 'package:doniel/src/views/screens/loginscreens.dart';
import 'package:flutter/cupertino.dart';

class Routes {
  Routes._();
  static const String initial = 'initial';
  static const String login = 'login';

  static final routes = <String, WidgetBuilder>{
    // initial: (context) => const LoginScreens(),
    login: (context) => const LoginScreens(),
  };
}
