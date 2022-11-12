import 'package:flutter/material.dart';
import 'package:remider/home/home_bloc.dart';
import 'package:remider/home/home_module.dart';
import 'package:remider/shared/config.dart';
import 'package:remider/shared/global_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalWidgets.topbar,
      body: _body(context),
      bottomSheet: _bottom(),
    );
  }

  Widget _body(context) {
    return Column(
      children: [
        // Remiders
        _remindersGrid(context),
      ],
    );
  }

  _remindersGrid(context) {
    return AnimatedBuilder(
      animation: HomeModule.instance,
      builder: (context, child) {
        return Container(
          color: Colors.amber,
          height: MediaQuery.of(context).size.height - AppConfig.topBarSize,
          child: GridView.count(
              crossAxisCount: 2,
              children: List.castFrom(
                HomeModule.instance.notes,
              )),
        );
      },
    );
  }

  _bottom() {
    return Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: ElevatedButton(
          child: Text(
            'Adicionar lembrete',
          ),
          onPressed: () {
            Navigator.of(context).pushNamed('/add-card');
          },
        ));
  }
}
