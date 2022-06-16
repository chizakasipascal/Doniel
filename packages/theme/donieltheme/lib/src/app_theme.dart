import 'package:donieltheme/src/colors.dart';
import 'package:flutter/material.dart';

import 'font_family.dart';

final ThemeData themeData = ThemeData(
  brightness: Brightness.dark,
  fontFamily: FontFamily.sanFrancisco,
  textTheme: const TextTheme(
    bodyText2: TextStyle(color: kGreyColor),
  ),
  scaffoldBackgroundColor: Colors.white,
  primaryColor: kDoniel,
  splashColor: kDoniel.withOpacity(.5),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: kDoniel,
    selectionColor: kDoniel,
    selectionHandleColor: kDoniel,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(kDoniel),
      foregroundColor: MaterialStateProperty.all(kWhiteColor),
      overlayColor: MaterialStateProperty.all(kGreyColor),
      shadowColor: MaterialStateProperty.all(kBlackColor),
      elevation: MaterialStateProperty.all(15),
      padding: MaterialStateProperty.all(const EdgeInsets.all(2)),
      maximumSize: MaterialStateProperty.all(const Size(200, 40)),
      minimumSize: MaterialStateProperty.all(const Size(100, 40)),
      fixedSize: MaterialStateProperty.all(const Size(200, 40)),
      animationDuration: const Duration(milliseconds: 100),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      side: MaterialStateProperty.all(
        const BorderSide(
          color: kDoniel,
          width: 2,
        ),
      ),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontSize: 16,
          color: kWhiteColor,
        ),
      ),
    ),
  ),
);
