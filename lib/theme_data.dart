import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

 class Theming {
   static Color primaryLightColor= Color(0xffB7935F);
  static Color secondryLightColor=Color(0xFF242424);

   static Color primarydarkColor=Color(0xffFACC1D);
   static Color secondrydarkColor=Color(0xFF141A2E);

   static ThemeData lightTheme=ThemeData(
    textTheme: TextTheme(
       bodySmall: GoogleFonts.elMessiri(fontSize: 20,fontWeight: FontWeight.w400,color:secondryLightColor),
      bodyMedium:GoogleFonts.elMessiri(fontSize: 25,fontWeight: FontWeight.w700,color:secondryLightColor),
      bodyLarge:GoogleFonts.elMessiri(fontSize: 30,fontWeight: FontWeight.bold,color:secondryLightColor),
      displaySmall: GoogleFonts.inter(fontSize: 20,fontWeight: FontWeight.w400,color:secondryLightColor),
      displayMedium: GoogleFonts.inter(fontSize: 25,fontWeight: FontWeight.w700,color:secondryLightColor),
      displayLarge: GoogleFonts.inter(fontSize: 30,fontWeight: FontWeight.bold,color:secondryLightColor),

    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
       showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedItemColor:secondryLightColor,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(size: 40),
      unselectedIconTheme: IconThemeData(size:35),
      selectedLabelStyle:GoogleFonts.elMessiri(fontSize: 15,fontWeight: FontWeight.bold),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme:  AppBarTheme(
      iconTheme: IconThemeData(color: primaryLightColor,size: 35),
      titleTextStyle: GoogleFonts.elMessiri(fontWeight: FontWeight.bold,fontSize: 30,color: secondryLightColor),
      color: Colors.transparent,
      elevation: 0.0,
       centerTitle: true,
    ),
  );
  static ThemeData darkTheme=ThemeData(
    textTheme: TextTheme(
      bodySmall: GoogleFonts.elMessiri(fontSize: 15,fontWeight: FontWeight.bold,color:primarydarkColor),
      bodyMedium:GoogleFonts.elMessiri(fontSize: 20,fontWeight: FontWeight.bold,color:primarydarkColor),
      bodyLarge:GoogleFonts.elMessiri(fontSize: 25,fontWeight: FontWeight.bold,color:primarydarkColor),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedItemColor:primarydarkColor,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(size: 35),
      unselectedIconTheme: IconThemeData(size: 35),
      selectedLabelStyle:GoogleFonts.elMessiri(fontSize: 15,fontWeight: FontWeight.bold),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme:  AppBarTheme(
      iconTheme: IconThemeData(color: primarydarkColor,size: 35),
      titleTextStyle: GoogleFonts.elMessiri(fontWeight: FontWeight.bold,fontSize: 30,color: secondryLightColor),
      color: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
    ),

  );

 }