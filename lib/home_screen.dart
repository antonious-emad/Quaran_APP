import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ElMoshaf/ahadeth_screen.dart';
import 'package:ElMoshaf/quaran_screen.dart';
import 'package:ElMoshaf/radio_page.dart';
import 'package:ElMoshaf/sebha_page.dart';
import 'package:ElMoshaf/settings_screen.dart';
import 'package:ElMoshaf/theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'Providers/provider.dart';

class HomeScreen extends StatelessWidget {
  static const String routename = "/Home";


  List<Widget> tabs = [
    QuranScreen(),
    AhadethScreen(),
    SebhaPage(),
    RadioPage(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProider>(context);

    return SafeArea(
        child: Stack(
      children: [
          provider.isDark?Image.asset(
            "assets/images/dark_bg.png",
            fit: BoxFit.cover,
            width: double.infinity,
          ) :Image.asset(
          "assets/images/default_bg.png",
          fit: BoxFit.cover,
          width: double.infinity,
        ),
          Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.apptitle),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: provider.index,
            onTap: (value) {
              provider.changeindex(value);
              // index = value;
              // setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.background,
                  label: AppLocalizations.of(context)!.quran,
                  icon: ImageIcon(AssetImage("assets/images/icon_quran.png"))),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.background,
                  label: AppLocalizations.of(context)!.ahadeth,
                  icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png"))),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.background,
                  label:AppLocalizations.of(context)!.sebha,
                  icon: ImageIcon(AssetImage("assets/images/icon_sebha.png"))),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.background,
                  label:AppLocalizations.of(context)!.radio,
                  icon: ImageIcon(AssetImage("assets/images/icon_radio.png"))),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.background,
                  label:AppLocalizations.of(context)!.settings,
                  icon: Icon(Icons.settings)),
            ],
          ),
          body: tabs[provider.index],
        ),
      ],
    ));
  }
}
