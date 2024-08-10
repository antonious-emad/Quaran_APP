import 'package:ElMoshaf/radio_model.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class RadioItem extends StatelessWidget {
  final AudioPlayer audioPlayer;
  final Radios radios;

  const RadioItem({super.key, required this.radios, required this.audioPlayer});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(radios.name ?? "",
            style:
            Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 24)),
        SizedBox(
          height: 130,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Spacer(),
              InkWell(
                  onTap: () {
                    stop();
                  },
                  child: Icon(
                      Icons.pause,
                      size: ScreenUtil().setWidth(35),
                      color: Theme.of(context).colorScheme.onError
    )),
              const Spacer(),
              InkWell(
                onTap: () {
                  play();
                },
                child: Icon(
                  Icons.play_arrow,
                  size: ScreenUtil().setWidth(40),
                  color: Theme.of(context).colorScheme.onError,
                ),
              ),
              const Spacer(),

            ],
          ),
        )
      ],
    );
  }
  void play() async {
    await audioPlayer.play(UrlSource(radios.url ?? ""));
  }

  void stop() async {
    await audioPlayer.stop();
  }
}