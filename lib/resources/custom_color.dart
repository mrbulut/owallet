import 'dart:ui';

import 'package:flutter/material.dart';

class CustomColor{
  static AlignmentGeometry _beginAlignment = Alignment.topCenter;
  static AlignmentGeometry _endAlignment = Alignment.bottomCenter;

  static LinearGradient buildGradient(AlignmentGeometry begin, AlignmentGeometry end, List<Color> colors) =>
      LinearGradient(begin: begin, end: end, colors: colors);

  static const Map<int, Color> color =
  {
    50:Color.fromRGBO(84,67,204, .1),
    100:Color.fromRGBO(84,67,204,  .2),
    200:Color.fromRGBO(84,67,204,  .3),
    300:Color.fromRGBO(84,67,204,  .4),
    400:Color.fromRGBO(84,67,204, .5),
    500:Color.fromRGBO(84,67,204,  .6),
    600:Color.fromRGBO(84,67,204,  .7),
    700:Color.fromRGBO(84,67,204,  .8),
    800:Color.fromRGBO(84,67,204,  .9),
    900:Color.fromRGBO(84,67,204,  1),
  };

//0xFF5343cc
  static const MaterialColor peace = MaterialColor(0x0Dee6723,color);
  static const MaterialColor dark = MaterialColor(0xFF203145,color);
  static const MaterialColor indexgrey = MaterialColor(0xFFe7eaf0,color);
  static const MaterialColor lightWhite = MaterialColor(0xB3f7f7f7,color);
  static const MaterialColor purple = MaterialColor(0xFFf1592a,color);
  static const MaterialColor grey = MaterialColor(0xFF989898,color);
  static const MaterialColor orange = MaterialColor(0xFFf7b228,color);
  static const MaterialColor green = MaterialColor(0xFF71ba56,color);
  static const MaterialColor pink = MaterialColor(0xFFff6969,color);
  static const MaterialColor blue = MaterialColor(0xFF60b0ff,color);


  static LinearGradient bluepurple = buildGradient(_beginAlignment, _endAlignment, const [Color(0xffc226fb), Color(0xff0d6fc4)]);
  static LinearGradient orangeWhite = buildGradient(_beginAlignment, _endAlignment, const [Color(0xfff7921d), Color(0xfff1592a)]);

  static const MaterialColor veryLightWhite = MaterialColor(0x73f7f7f7,color);

}