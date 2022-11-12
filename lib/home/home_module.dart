import 'package:flutter/material.dart';

import 'widgets/card.dart';

class HomeModule extends ChangeNotifier {
  List notes = [
    Padding(
        padding: const EdgeInsets.all(8.0),
        child: ReminderCard(
          text: 'Amanhã eu tenho que fazer o deploy do app 1',
        )),
  ];

  void insert(text) {
    notes.add(
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: ReminderCard(
            text: text,
          )),
    );
    notifyListeners();
  }

  static final instance = HomeModule();
}
