import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:ElMoshaf/Providers/provider.dart';

class SebhaPage extends StatelessWidget {
  const SebhaPage({super.key});

  @override
  Widget build(BuildContext context) {
    MyProider provider = Provider.of<MyProider>(context);
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 60.h),
                    margin: EdgeInsets.only(top: 20.h),
                    child: Transform.rotate(
                      angle: provider.angel,
                      child: Image.asset(
                        provider.getBackGround(
                            lightImage: 'assets/images/body_sebha_logo.png',
                            darkImage: 'assets/images/body_sebha_dark.png'),
                        fit: BoxFit.fill,
                        height: 200.h,
                      ),
                    ),
                  ),

                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 12.h),
                child: Image.asset(
                  provider.getBackGround(
                      lightImage: 'assets/images/head_sebha_logo.png',
                      darkImage: 'assets/images/head_sebha_dark.png'),
                ),
              )
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Text(
            AppLocalizations.of(context)!.numberOfTasbeh,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!.copyWith(color: Theme.of(context).colorScheme.onBackground),
          ),
          const Spacer(
            flex: 1,
          ),
          Container(
            width: 69,
            height: 81,
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              '${provider.counter}',style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).colorScheme.onError,
            ),
            child: InkWell(
              onTap: () {
                provider.sebhaLogic();
              },
              child: Text(
                provider.txt,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Theme.of(context).colorScheme.onPrimary),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Spacer(
            flex: 5,
          ), 
        ],
      ),
    );
  }
}
