import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:remider/shared/global_widgets.dart';

class AddCardPage extends StatelessWidget {
  const AddCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Preencha os campos')),
      body: _body(context),
      bottomSheet: _bottom(context),
    );
  }

  _body(BuildContext context) {}

  _bottom(BuildContext context) {
    return SizedBox(
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        child: Text('Salvar tarefa'),
        onPressed: () {},
      ),
    );
  }
}
