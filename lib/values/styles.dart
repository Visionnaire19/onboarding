import 'package:flutter/material.dart';
import 'dart:ui';

abstract class Styles{

  static const titles = TextStyle(
    fontFamily: 'Bebas',
  fontSize: 30.0,
    decoration: TextDecoration.underline,
    color: Colors.black
  );

  static const text = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 20.0,
    color: Colors.black87
  );

  static const tableHeadlines = TextStyle(
    fontFamily: 'Bebas',
    fontSize: 20.0,
    color: Colors.black

  );

  static const subtitles = TextStyle(
      fontFamily: 'Bebas',
      fontSize: 25.0,
      color: Colors.black

  );

  static const subTextStyle = TextStyle(
    fontFamily: 'Poppins',
      color: const Color(0xff424242),
      fontSize: 25.0,
      fontWeight: FontWeight.w400
  );
}