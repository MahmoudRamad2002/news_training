import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myThemData {
  static const Color primarycolor = Color(0xFF39A552);
  static const Color redcolor = Color(0xFFC91C22);
  static const Color darkbluucolor = Color(0xFF003E90);
  static const Color browncolor = Color(0xFFCF7E48);
  static const Color pinkcolor = Color(0xFFED1E79);
  static const Color yallowcolor = Color(0xFFF2D352);
  static const Color bluecolor = Color(0xFF4882CF);
  static const Color blackcolor = Color(0xFF303030);
  static const Color graycolor = Color(0xFF4F5A69);
  static const Color whitcolor = Color(0xFFFFFFFF);
  static final ThemeData lightThem = ThemeData(
    primaryColor: primarycolor,
    appBarTheme: AppBarTheme(
        color: primarycolor,
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ))),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      backgroundColor: primarycolor,
      selectedItemColor: myThemData.primarycolor,
      unselectedItemColor: myThemData.primarycolor,
      selectedLabelStyle: GoogleFonts.quicksand(fontSize: 12),
      unselectedLabelStyle: GoogleFonts.quicksand(fontSize: 12),
    ),
    textTheme: TextTheme(
      titleSmall: GoogleFonts.elMessiri(
          color: Color(0xFF242424), fontWeight: FontWeight.bold, fontSize: 30),
      bodyLarge: TextStyle(
          color: Color(0xFF242424), fontWeight: FontWeight.bold, fontSize: 30),
      bodyMedium: TextStyle(
          color: Color(0xFF242424), fontWeight: FontWeight.w400, fontSize: 24),
      bodySmall: TextStyle(
          color: Color(0xFF242424), fontWeight: FontWeight.w300, fontSize: 20),
    ),
  );
}
