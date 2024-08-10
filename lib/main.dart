import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ElMoshaf/Providers/provider.dart';

import 'my_app.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  MyProider provider = MyProider();
  await Future.wait([provider.cashTheme(), provider.cashLanguage()]);

  runApp(ChangeNotifierProvider(create: (context) =>provider ,child: MyApp()));
}


