import 'package:flutter/material.dart';

class Mytheme {
  static const Color lightprimry = Color(0xFF5D9CEC);
  static const Color lightScafold = Color(0xFFDFEDB);
  static const Color green = Color(0xFF61E757);
  static const Color red = Color(0xFFEC4B4B);

  static ThemeData lighttheme = ThemeData(
      textTheme: TextTheme(
          headline6: TextStyle(fontSize: 20, color: Colors.blueAccent)),
      backgroundColor: Colors.grey,
      scaffoldBackgroundColor: Colors.greenAccent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(
          size: 50,
        ),
        unselectedIconTheme: IconThemeData(
          size: 30,
        ),
      ));
}
