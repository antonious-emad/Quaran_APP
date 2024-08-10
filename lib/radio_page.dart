import 'package:ElMoshaf/radio_item.dart';
import 'package:ElMoshaf/radio_model.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Api_Manger.dart';

class RadioPage extends StatefulWidget {

  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  late AudioPlayer audioPlayer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    audioPlayer.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(
          flex: 3,
        ),
        Image.asset(
          'assets/images/radio_image.png',
          width: double.infinity,
          height: 200.h,
        ),
        const Spacer(
          flex: 1,
        ),
        Text(
          AppLocalizations.of(context)!.radioOfEthicsQuran,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
        const Spacer(
          flex: 1,
        ),
    FutureBuilder<List<Radios>?>(
    future: ApiManger.getRadios(),
    builder: (context, snapshot) {
    if (snapshot.hasError) {
    return Center(
    child: Text(snapshot.error.toString()),
    );
    } else if (snapshot.connectionState == ConnectionState.waiting) {
    return const Center(
    child: CircularProgressIndicator(),
    );
    } else {
    return SizedBox(
    height: MediaQuery.of(context).size.height * 0.3,
    child: ListView.builder(
    physics: const PageScrollPhysics(),
    scrollDirection: Axis.horizontal,
    itemExtent: MediaQuery.of(context).size.width,
    itemCount: snapshot.data?.length ?? 0,
    itemBuilder: (context, index) {
    return RadioItem(
    radios: snapshot.data![index],
    audioPlayer: audioPlayer,
    );
    },
    ),
    );
    }
    },
    ),

        const Spacer(
          flex: 3,
        )
      ],
    );
  }


}
