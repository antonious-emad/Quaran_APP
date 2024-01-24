import 'package:flutter/material.dart';
import 'package:second/Sura_details_screen.dart';
import 'package:second/home_screen.dart';
import 'package:second/theme_data.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
      HomeScreen.routename:(context) => HomeScreen(),
      SuraDetailsScreen.routeNmae:(context) => SuraDetailsScreen(),
      } ,
      initialRoute:HomeScreen.routename,
      theme:Theming.lightTheme,
      darkTheme: Theming.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
