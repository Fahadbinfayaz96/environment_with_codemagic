import 'package:flutter/material.dart';
import 'package:my_paint/app_widget.dart';
import 'package:my_paint/config_reader.dart';
import 'package:provider/provider.dart';

import 'evn.dart';

Future<void> mainCommon(String evn) async{
WidgetsFlutterBinding.ensureInitialized();
await ConfigReader.initialize();
 MaterialColor? primaryColor;
  switch (evn) {
    case Enviroment.dev:
      primaryColor = Colors.blue;
      break;
    case Enviroment.prod:
      primaryColor = Colors.red;
      break;
  }

  runApp( Provider<MaterialColor>(
      create: (_) => primaryColor!,
      child: MyApp(),
    ),);
}