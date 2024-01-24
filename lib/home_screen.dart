import 'package:flutter/material.dart';
import 'package:second/ahadeth_screen.dart';
import 'package:second/quaran_screen.dart';
import 'package:second/radio_screen.dart';
import 'package:second/sebha_screen.dart';
import 'package:second/settings_screen.dart';
import 'package:second/theme_data.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = "/Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> tabs = [
    QuranScreen(),
    AhadethScreen(),
    SebhaScreen(),
    RadioScreen(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        Image.asset(
          "assets/images/default_bg.png",
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Isalmi",style: Theme.of(context).textTheme.bodyLarge,),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theming.primaryLightColor,
                  label: "Quaran",
                  icon: ImageIcon(AssetImage("assets/images/icon_quran.png"))),
              BottomNavigationBarItem(
                  backgroundColor: Theming.primaryLightColor,
                  label: "Ahadeth",
                  icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png"))),
              BottomNavigationBarItem(
                  backgroundColor: Theming.primaryLightColor,
                  label: "Sebha",
                  icon: ImageIcon(AssetImage("assets/images/icon_sebha.png"))),
              BottomNavigationBarItem(
                  backgroundColor: Theming.primaryLightColor,
                  label: "Radio",
                  icon: ImageIcon(AssetImage("assets/images/icon_radio.png"))),
              BottomNavigationBarItem(
                  backgroundColor: Theming.primaryLightColor,
                  label: "Settings",
                  icon: Icon(Icons.settings)),
            ],
          ),
          body: tabs[index],
        ),
      ],
    ));
  }
}
