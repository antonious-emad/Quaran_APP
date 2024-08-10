import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ElMoshaf/ahadeth_model.dart';
import 'package:ElMoshaf/theme_data.dart';

import 'Providers/provider.dart';
class HadethDetailsScreen extends StatefulWidget {
  static const String routeNmae="HadethDetailsScreen";

  const HadethDetailsScreen({super.key});

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as AhadethModel;
    var provider=Provider.of<MyProider>(context);
    return SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image:provider.isDark?DecorationImage(image: AssetImage("assets/images/dark_bg.png"),fit: BoxFit.cover) :DecorationImage(image: AssetImage("assets/images/default_bg.png"),fit: BoxFit.cover)
          ),
          child: Scaffold(
            appBar: AppBar(title: Text(args.hadethtitle),),
            body:Card(
              color:Theme.of(context).colorScheme.onSurface,
              elevation: 10,
              margin: EdgeInsets.all(25),
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Theme.of(context).colorScheme.onSurface,width: 2),
                  borderRadius: BorderRadius.circular(35)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView.separated(
                    itemBuilder: (context, index) => Center(child: Text(args.content[index],textAlign: TextAlign.center,style: Theme.of(context).textTheme.displaySmall,),),
                    separatorBuilder: (context, index) =>Divider(indent: 40,endIndent: 40,thickness: 2,color: Theme.of(context).colorScheme.onError )
                    , itemCount: args.content.length),
              ),
            ) ,
          ),
        ));
  }
}
