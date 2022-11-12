import 'package:flutter/material.dart';
import 'package:remider/shared/config.dart';

import 'add_card/add_card_page.dart';
import 'home/home_page.dart';

void main(List<String> args) {
  runApp(const AppStart());
}

class AppStart extends StatelessWidget {
  const AppStart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
          primarySwatch: Colors.purple,
          textTheme:
              TextTheme(button: TextStyle(fontSize: AppConfig.midSizeText))),
      routes: {
        '/home': (context) => HomePage(),
        '/add-card': (context) => AddCardPage(),
      },
    );
  }
}
