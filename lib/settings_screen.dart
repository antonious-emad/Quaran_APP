import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ElMoshaf/theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'Providers/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProider>(context);
    showLanguageBottomSheet( context) {
      showModalBottomSheet(
         backgroundColor:Theme.of(context).colorScheme.onSurface,
        isScrollControlled: true,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color:Theme.of(context).colorScheme.onSurface,)
        ),
        context: context, builder: (context) {
        return Container(height: MediaQuery.of(context).size.height * 0.5,
          child:Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(onTap: () {
                  provider.ChangeLanguage("en");
                },child: Row(
                  children: [
                    provider.languageCode=="en"?Text(AppLocalizations.of(context)!.english,style: TextStyle(color: Theming.primaryLightColor)):Text(AppLocalizations.of(context)!.english,style: TextStyle(color: Colors.black54)),
                    Spacer(),
                    provider.languageCode=="en"?Icon(Icons.done,color: Theming.primaryLightColor,size: 35,):SizedBox.shrink(),
                  ],
                )),
                SizedBox(height: 25,),
                InkWell(onTap: () {
                  provider.ChangeLanguage("ar");
                  // AppLocalizations.of(context)!.localeName=Locale("en");
                  // setState(() {});
                },child: Row(
                  children: [
                    provider.languageCode=="ar"?Text(AppLocalizations.of(context)!.arabic,style: TextStyle(color: Theming.primaryLightColor)):Text(AppLocalizations.of(context)!.arabic,style: TextStyle(color: Colors.black54)),
                    Spacer(),
                    provider.languageCode=="ar"?Icon(Icons.done,color: Theming.primaryLightColor,size: 35,):SizedBox.shrink(),
                  ],
                )),

              ],
            ),
          ),
        );
      },
      );
    }
    showThemingBottomSheet(context) {
      showModalBottomSheet(
        backgroundColor:Theme.of(context).colorScheme.onSurface,
        isScrollControlled: true,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.onSurface,)
        ),
        context: context, builder: (context) {
        return Container(height: MediaQuery.of(context).size.height * 0.5,
          child:Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(onTap: () {
                  provider.ChangeMode(false,ThemeMode.light);
                },child: Row(
                  children: [
                    provider.isDark==false?Text(AppLocalizations.of(context)!.light,style: TextStyle(color: Theming.primaryLightColor)):Text(AppLocalizations.of(context)!.light,style: TextStyle(color: Colors.black54)),
                    Spacer(),
                    provider.isDark==false?Icon(Icons.done,color: Theming.primaryLightColor,size: 35,):SizedBox.shrink(),
                  ],
                )),
                SizedBox(height: 25,),
                InkWell(onTap: () {
                  provider.ChangeMode(true,ThemeMode.dark);
                  // AppLocalizations.of(context)!.localeName=Locale("en");
                  // setState(() {});
                },child: Row(
                  children: [
                    provider.isDark==true?Text(AppLocalizations.of(context)!.dark,style: TextStyle(color: Theming.primaryLightColor),):Text(AppLocalizations.of(context)!.dark,style: TextStyle(color: Colors.black54),),
                    Spacer(),
                    provider.isDark==true?Icon(Icons.done,color: Theming.primaryLightColor,size: 35,):SizedBox.shrink(),
                  ],
                )),

              ],
            ),
          ),
        );
      },
      );
    }


    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.language),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
                margin: EdgeInsets.all(18),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Theming.primaryLightColor)
                ), child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: provider.languageCode == "en" ? Text(
                  AppLocalizations.of(context)!.english) : Text(
                  AppLocalizations.of(context)!.arabic),

              // child: AppLocalizations.of(context)!.localeName == "en" ? Text(
              //     AppLocalizations.of(context)!.english) : Text(
              //     AppLocalizations.of(context)!.arabic),

            )),
          ),
          SizedBox(height: 10,),
          Text(AppLocalizations.of(context)!.theming),
          InkWell(
            onTap: () {
              showThemingBottomSheet(context);
            },
            child: Container(
                margin: EdgeInsets.all(18),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Theming.primaryLightColor)
                ), child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: provider.isDark ? Text(
                  AppLocalizations.of(context)!.dark) : Text(
                  AppLocalizations.of(context)!.light),

              // child: ThemeMode.system == ThemeMode.light ? Text(
              //     AppLocalizations.of(context)!.light) : Text(
              //     AppLocalizations.of(context)!.dark),

            )),
          ),
        ],
      ),
    );
  }


}
