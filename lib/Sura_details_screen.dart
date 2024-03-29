import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:second/sura_model.dart';
import 'package:second/theme_data.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeNmae="SuraDetailsScreen";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(verses.isEmpty){loadFile(args.index);}
    return SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/default_bg.png"),fit: BoxFit.cover)
          ),
          child: Scaffold(
              appBar: AppBar(title: Text(args.suraName),),
            body:Card(
              elevation: 10,
              margin: EdgeInsets.all(25),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white,width: 2),
                borderRadius: BorderRadius.circular(35)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView.separated(
                    itemBuilder: (context, index) => Center(child: Text(verses[index],textAlign: TextAlign.center,style: Theme.of(context).textTheme.displaySmall,),),
                    separatorBuilder: (context, index) =>Divider(indent: 40,endIndent: 40,thickness: 2,color: Theming.primaryLightColor )
                    , itemCount: verses.length),
              ),
            ) ,
    ),
        ));
  }

  loadFile(int index) async{
    String File= await rootBundle.loadString("assets/files/${index+1}.txt");
    // Futur<String> File= rootBundle.loadString("assets/files/${index+1}.txt");
    List<String> lines=File.split("\n");
    verses=lines;
    setState(() {});
  }
}
