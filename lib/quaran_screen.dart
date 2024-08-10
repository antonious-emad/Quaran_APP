import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ElMoshaf/Sura_details_screen.dart';
import 'package:ElMoshaf/sura_model.dart';
import 'package:ElMoshaf/theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class QuranScreen extends StatefulWidget {
  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  List<String> suranames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(child: Image.asset("assets/images/qur2an_screen_logo.png")),
        Divider(color: Theme.of(context).colorScheme.onError,thickness: 3),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(AppLocalizations.of(context)!.suranames,style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        Divider(color:Theme.of(context).colorScheme.onError,thickness: 3),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.pushNamed(context,SuraDetailsScreen.routeNmae,arguments: SuraModel(index, suranames[index]));
                },

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                    suranames[index],
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                        ],
                      )),
              separatorBuilder: (context, index) =>
                  Divider(color: Theme.of(context).colorScheme.onError,thickness: 1,indent: 30,endIndent: 30,),
              itemCount: suranames.length),
        )
      ],
    );
  }
}
