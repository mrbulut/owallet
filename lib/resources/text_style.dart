import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_color.dart';


class CustomTextStyle {
  static TextStyle textStyle() {
    return TextStyle(
        color:  const Color(0xff203145),
        fontWeight: FontWeight.w500,
        fontFamily: "Avenir",
        fontStyle:  FontStyle.normal,
        fontSize: 18.0);
  }

  static TextStyle HintStyle() {
    return TextStyle(
        color: const Color(0xffa8a8a8),
        fontWeight: FontWeight.w500,
        fontFamily: 'Avenir',
        fontStyle: FontStyle.normal,
        fontSize: 12.0);
  }
}
