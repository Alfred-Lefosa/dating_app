import 'package:flutter/material.dart';


class AppColors{
  static const Color faintedRed = Color(0x52CB0303);
  static const Color appRed = Color(0xFFF70D0D);
  static const Color appBlue100 = Color(0xFF08CAF4);
  static const Color appBlue10 =Color(0x1A08CAF4);
  static const Color appBlue40 = Color(0x6608CAF4);
  static const Color appBlue67 = Color(0xAB08CAF4);
  static const Color appAqua = Color(0xFF64CAE0);


 static const  Map<int, Color> color =
  {
    50:Color.fromRGBO(136,14,79, .1),
    100:Color.fromRGBO(136,14,79, .2),
    200:Color.fromRGBO(136,14,79, .3),
    300:Color.fromRGBO(136,14,79, .4),
    400:Color.fromRGBO(136,14,79, .5),
    500:Color.fromRGBO(136,14,79, .6),
    600:Color.fromRGBO(136,14,79, .7),
    700:Color.fromRGBO(136,14,79, .8),
    800:Color.fromRGBO(136,14,79, .9),
    900:Color.fromRGBO(136,14,79, 1),
  };

  static const MaterialColor appThemeColor = MaterialColor(0xFF08CAF4, color);
}