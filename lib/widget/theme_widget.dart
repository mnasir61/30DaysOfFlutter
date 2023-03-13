import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarThemeWidget {
  static ThemeData lightTheme(BuildContext contexts) => ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
        ),
      );

  static ThemeData darkTheme(BuildContext contexts) => ThemeData(brightness: Brightness.dark);
}
