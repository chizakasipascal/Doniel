import 'package:donieltheme/src/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io' show Platform;

import 'font_family.dart';

const Color colorDefaultFont = kGreyColor;
final ThemeData themeData = ThemeData(
  brightness: Brightness.dark,
  fontFamily: Platform.isAndroid
      ? GoogleFonts.roboto().fontFamily
      : FontFamily.sanFrancisco,
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.light, // 2
  ),
  textTheme: Platform.isAndroid
      ? TextTheme(
          headline1: GoogleFonts.roboto(
              color: colorDefaultFont,
              fontSize: 97,
              fontWeight: FontWeight.w300,
              letterSpacing: -1.5),
          headline2: GoogleFonts.roboto(
              color: colorDefaultFont,
              fontSize: 61,
              fontWeight: FontWeight.w300,
              letterSpacing: -0.5),
          headline3: GoogleFonts.roboto(
              color: colorDefaultFont,
              fontSize: 48,
              fontWeight: FontWeight.w400),
          headline4: GoogleFonts.roboto(
              color: colorDefaultFont,
              fontSize: 34,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.25),
          headline5: GoogleFonts.roboto(
              color: colorDefaultFont,
              fontSize: 24,
              fontWeight: FontWeight.w400),
          headline6: GoogleFonts.roboto(
              color: colorDefaultFont,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.15),
          subtitle1: GoogleFonts.roboto(
              color: colorDefaultFont,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.15),
          subtitle2: GoogleFonts.roboto(
              color: colorDefaultFont,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.1),
          bodyText1: GoogleFonts.roboto(
              color: colorDefaultFont,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.5),
          bodyText2: GoogleFonts.roboto(
              color: colorDefaultFont,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.25),
          button: GoogleFonts.roboto(
              color: colorDefaultFont,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.25),
          caption: GoogleFonts.roboto(
              color: colorDefaultFont,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.4),
          overline: GoogleFonts.roboto(
              color: colorDefaultFont,
              fontSize: 10,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.5),
        )
      : TextTheme(
          headline1: const TextStyle(
              color: colorDefaultFont,
              fontSize: 97,
              fontWeight: FontWeight.w300,
              letterSpacing: -1.5),
          headline2: const TextStyle(
              color: colorDefaultFont,
              fontSize: 61,
              fontWeight: FontWeight.w300,
              letterSpacing: -0.5),
          headline3: GoogleFonts.roboto(
              color: colorDefaultFont,
              fontSize: 48,
              fontWeight: FontWeight.w400),
          headline4: GoogleFonts.roboto(
              color: colorDefaultFont,
              fontSize: 34,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.25),
          headline5: GoogleFonts.roboto(
              color: colorDefaultFont,
              fontSize: 24,
              fontWeight: FontWeight.w400),
          headline6: GoogleFonts.roboto(
              color: colorDefaultFont,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.15),
          subtitle1: const TextStyle(
              color: colorDefaultFont,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.15),
          subtitle2: const TextStyle(
              color: colorDefaultFont,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.1),
          bodyText1: const TextStyle(
              color: colorDefaultFont,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.5),
          bodyText2: const TextStyle(
              color: colorDefaultFont,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.25),
          button: const TextStyle(
              color: colorDefaultFont,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.25),
          caption: const TextStyle(
              color: colorDefaultFont,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.4),
          overline: const TextStyle(
              color: colorDefaultFont,
              fontSize: 10,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.5),
        ),
  scaffoldBackgroundColor: kWhiteColor,
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
