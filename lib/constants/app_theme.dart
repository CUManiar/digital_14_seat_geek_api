import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData appTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: mainBgColor,
    iconTheme: IconThemeData(
      color: blackColor,
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor:
      MaterialStateProperty.resolveWith((states) => mainBgColor),
    ),
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
    headline5: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
  ),
);
