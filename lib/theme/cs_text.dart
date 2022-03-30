import 'package:flutter/material.dart';
import 'app_theme.dart';

class CSText {
  //  NAME        SIZE
  //  headline1   32.0
  //  headline2   30.0
  //  headline3   28.0
  //  headline4   26.0
  //  headline5   24.0
  //  headline6   22.0
  //  subtitle1   20.0
  //  subtitle2   18.0
  //  body1       16.0
  //  body2       14.0
  //  caption1    12.0
  //  caption2    10.0
  //  overLine1    8.0
  //  overLine2    6.0

  TextStyle headline6Bold = const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 22.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      color: AppThemeData.appColorWhite);

  TextStyle subtitle1Bold = const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 20.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      color: AppThemeData.appColorWhite);

  TextStyle subtitle2Bold = const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 18.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      color: AppThemeData.appColorRed);

  TextStyle body1Bold = const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      color: AppThemeData.appColorWhite);

  TextStyle body1Normal = const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      color: AppThemeData.appColorWhite);

  TextStyle body2Normal = const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      color: AppThemeData.appColorWhite);

  TextStyle caption1SemiBold = const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      color: AppThemeData.appColorWhite);

  TextStyle caption1Normal = const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      color: AppThemeData.appColorWhite);
}
