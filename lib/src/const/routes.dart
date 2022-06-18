import 'package:doniel/src/views/screens/screens.dart';
import 'package:flutter/cupertino.dart';

class Routes {
  Routes._();
  static const String initial = 'initial';
  static const String login = 'login';
  static const String profile = 'profile';
  static const String page = 'page';

  static final routes = <String, WidgetBuilder>{
    // initial: (context) => const LoginScreens(),
    login: (context) => LoginScreens(),
    profile: (context) => const Profile(),
    page: (context) => const PageDoniel(),
  };
}
