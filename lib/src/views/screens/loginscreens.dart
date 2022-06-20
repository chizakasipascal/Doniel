import 'package:donieltheme/donieltheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../const/const.dart';
import '../views.dart';

class LoginScreens extends StatefulWidget {
  const LoginScreens({Key? key}) : super(key: key);

  @override
  State<LoginScreens> createState() => _LoginScreensState();
}

class _LoginScreensState extends State<LoginScreens> {
  final GlobalKey<FormState> _keyForm = GlobalKey();

  final GlobalKey<State> _keyLoader =
      GlobalKey<State>(debugLabel: "loading  user");

  final TextEditingController _telephone = TextEditingController();

  final TextEditingController _password = TextEditingController();

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Stack(
      children: [
        const BuildBackground(),
        Padding(
          padding: const EdgeInsets.only(top: 0.0, left: 20, right: 20),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Doniel App",
                        style: themeData.textTheme.headline6!.copyWith(
                          color: kDoniel,
                        ),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        "Welcom back you've",
                        style: themeData.textTheme.bodyText2!.copyWith(
                          color: kBlackColor.withOpacity(.6),
                        ),
                      ),
                      Text(
                        "been missed!",
                        style: themeData.textTheme.bodyText2!.copyWith(
                          color: kBlackColor.withOpacity(.6),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              right: 15,
                              top: 5,
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Enter username',
                                labelStyle: themeData.textTheme.caption,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Stack(
                          alignment: const Alignment(0, 0),
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 5),
                                child: TextFormField(
                                  obscureText: obscureText,
                                  maxLength: 20,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Your password',
                                    counterText: "",
                                    labelStyle: themeData.textTheme.caption,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 15,
                              child: SizedBox(
                                width: 70,
                                child: MaterialButton(
                                  // color: kDoniel,
                                  onPressed: () {
                                    setState(() {
                                      obscureText = !obscureText;
                                    });
                                  },
                                  child: Text(
                                    'SHOW',
                                    style:
                                        themeData.textTheme.overline!.copyWith(
                                      color: obscureText
                                          ? kGreyColor
                                          : kDoniel.withOpacity(.5),
                                      fontSize: 8,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: MaterialButton(
                            color: kDoniel,
                            onPressed: () =>
                                Navigator.popAndPushNamed(context, Routes.page),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              'Sign in',
                              style: themeData.textTheme.headline6!.copyWith(
                                color: kWhiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 1.5,
                                  width: MediaQuery.of(context).size.width * .2,
                                  color: kDoniel.withOpacity(.4),
                                ),
                                Text("Or continue with",
                                    style: themeData.textTheme.caption),
                                Container(
                                  height: 1.5,
                                  width: MediaQuery.of(context).size.width * .2,
                                  color: kDoniel.withOpacity(.4),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: Icon(
                                      AntDesign.google,
                                      color: Color.fromARGB(255, 230, 66, 66),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: Icon(
                                      AntDesign.facebook_square,
                                      color: Color.fromARGB(255, 23, 98, 135),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Not a member?',
                        ),
                        TextSpan(
                          text: ' Register now',
                          style: themeData.textTheme.caption!
                              .copyWith(color: kDoniel.withOpacity(.5)),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                    style: themeData.textTheme.caption,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
