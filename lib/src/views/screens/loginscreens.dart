import 'package:flutter/material.dart';

import '../views.dart';

class LoginScreens extends StatelessWidget {
  LoginScreens({Key? key}) : super(key: key);

  final GlobalKey<FormState> _keyForm = GlobalKey();
  final GlobalKey<State> _keyLoader =
      GlobalKey<State>(debugLabel: "loading  user");

  final TextEditingController _telephone = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Stack(
      children: [
        const BuildBackground(),
        Scaffold(
          body: Container(),
        ),
      ],
    );
  }
}
