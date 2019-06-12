import 'package:flutter/material.dart';

final ThemeData defaultTheme = _buildDefaultTheme();

ThemeData _buildDefaultTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _buildDefaultTextTheme(base.textTheme),
    primaryColor: Colors.blueGrey,
//    accentColor: Colors.black12,
    canvasColor: Colors.brown[200],
    primaryTextTheme: _buildDefaultTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildDefaultTextTheme(base.accentTextTheme),
  );
}

TextTheme _buildDefaultTextTheme(TextTheme base) {
  return base.copyWith(
    headline: base.headline.copyWith(
      fontWeight: FontWeight.w500,
    ),
    title: base.title.copyWith(
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontSize: 30.0,
    ),
    caption: base.caption.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
    ),
    subhead: base.headline.copyWith(fontWeight: FontWeight.w400, fontSize: 18),
    body2: base.body2.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
    ),
  );
}

//      ThemeData(
////        primarySwatch: Colors.purple,
//          primaryColor: Colors.blueGrey,
//          accentColor: Colors.black,
//          canvasColor: Colors.brown[200],
//          brightness: Brightness.dark,
//          primaryTextTheme: TextTheme(title: TextStyle(color: Colors.white))),
