import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:second/hadeth_details_screen.dart';
import 'package:second/theme_data.dart';

import 'ahadeth_model.dart';

class AhadethScreen extends StatefulWidget {
  @override
  State<AhadethScreen> createState() => _AhadethScreenState();
}

class _AhadethScreenState extends State<AhadethScreen> {
List<AhadethModel>allahadeth=[];

  @override
  Widget build(BuildContext context) {
    loadAhadeth();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Image.asset("assets/images/qur2an_screen_logo.png")),
          Divider(color: Theming.primaryLightColor,thickness: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("الأحاديث",style: Theme.of(context).textTheme.bodyMedium,),
            ],
          ),
          Divider(color: Theming.primaryLightColor,thickness: 3),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
              itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.pushNamed(context,HadethDetailsScreen.routeNmae,arguments: AhadethModel(allahadeth[index].hadethtitle,allahadeth[index].content ));
                  },

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        allahadeth[index].hadethtitle,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ],
                  )),
              separatorBuilder: (context, index) =>
                  Divider(color: Theming.primaryLightColor,thickness: 1,indent: 30,endIndent: 30,),
              itemCount: allahadeth.length)
        ],
      ),
    );
  }

  loadAhadeth() {
    rootBundle.loadString("assets/files/ahadeth.txt").then(
            (ahadeth) {
          List<String>AhadethList=ahadeth.split("#");
          for(int i=0;i<AhadethList.length;i++){
            String hadeth=AhadethList[i];
            List<String>HadethLines=hadeth.trim().split("\n");
            // List<String>HadethLines=hadeth.split("\n\r");
            String hadethtitle=HadethLines[0];
            HadethLines.removeAt(0);
            List<String> hadethcontent=HadethLines;
            AhadethModel hadethmodel =AhadethModel(hadethtitle,hadethcontent);
            allahadeth.add(hadethmodel);
            setState(() {});
          }
    }
    );
  }
}
