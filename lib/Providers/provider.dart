import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyProider extends ChangeNotifier{
   String languageCode="en";
   bool isDark=false;
   int index=0;
   SharedPreferences? preferences;
   ThemeMode mode = ThemeMode.light;
   int counter = 1;
   double angel = 1;
   String txt = 'سبحان الله';
   int oneHundred = 0;
   int indexOfScreen = 0;




   ChangeLanguage(String langcode){
     languageCode=langcode;
     saveLanguage(langcode);
     notifyListeners();
   }

   Future<void> saveLanguage(String lang) async {
     String language = lang == 'en' ? 'en' : 'ar';
     await preferences!.setString('language', language);
   }

   Future<void> cashLanguage() async {
     preferences = await SharedPreferences.getInstance();
     String? oldLanguage = getLanguage();
     if (oldLanguage != null) {
       languageCode = oldLanguage == 'en' ? 'en' : 'ar';
     }
   }

   String? getLanguage() {
     return preferences!.getString('language');
   }



   ChangeMode(bool flag,ThemeMode themeMode){
     isDark=flag;
     mode=themeMode;
     saveTheme(mode);
     notifyListeners();
   }

   Future<void> saveTheme(ThemeMode themeMode) async {
     String theme = themeMode == ThemeMode.dark ? 'dark' : 'light';
     await preferences!.setString('theme', theme);
   }

   Future<void> cashTheme() async {
     preferences = await SharedPreferences.getInstance();
     String? oldTheme = displayTheme();
     if (oldTheme != null) {
       mode = oldTheme == 'dark' ? ThemeMode.dark : ThemeMode.light;
       isDark=oldTheme=='dark'?true:false;
     }
   }

   String? displayTheme() {
     return preferences!.getString('theme');
   }

   changeindex(value){
     index=value;
     notifyListeners();
   }


   String getBackGround({String lightImage = 'assets/images/background.png', String darkImage = 'assets/images/darkbg.png'}) {
     if (!isDark) {
       return lightImage;
     } else {
       return darkImage;
     }
   }

   String getTheme(BuildContext context) {
     if (mode == ThemeMode.light) {
       return AppLocalizations.of(context)!.light;
     } else {
       return AppLocalizations.of(context)!.dark;
     }
   }

   void sebhaLogic() {
     counter++;
     angel++;
     if (counter > 0 && counter < 33) {
       txt = 'سبحان الله';
     } else if (counter > 33 && counter < 66) {
       txt = 'الحمدالله';
     } else if (counter > 66 && counter < 99) {
       txt = 'لا اله الا الله';
     } else if (counter > 99 && counter <= 100) {
       txt = 'الله اكبر';
       oneHundred++;
       counter = 0;
     }
     notifyListeners();
   }

}