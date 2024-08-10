import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:ElMoshaf/Providers/provider.dart';
import 'package:ElMoshaf/Sura_details_screen.dart';
import 'package:ElMoshaf/hadeth_details_screen.dart';
import 'package:ElMoshaf/home_screen.dart';
import 'package:ElMoshaf/theme_data.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyProider provider=Provider.of<MyProider>(context);

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:(context,child)=> MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          AppLocalizations.delegate, // Add this line
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en'), // English
          Locale('ar'), // Spanish
        ],
        locale: Locale(provider.languageCode),
        routes:{
        HomeScreen.routename:(context) => HomeScreen(),
        SuraDetailsScreen.routeNmae:(context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeNmae:(context) => HadethDetailsScreen(),
        } ,
        initialRoute:HomeScreen.routename,
        theme:Theming.lightTheme,
        darkTheme: Theming.darkTheme,
        themeMode:provider.isDark==true && provider.mode==ThemeMode.dark?ThemeMode.dark:ThemeMode.light,
      ),
    );
  }
}
