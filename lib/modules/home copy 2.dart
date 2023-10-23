import 'package:first_project_learningb/kernel/colors/colors_app.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inicio'),
          backgroundColor: ColorsApp.primaryColor,
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(32),
              color: ColorsApp.dangerColor,
              margin: const EdgeInsets.all(16),
              child: const Row(children: [
                Text('José Manuel'),
                Text('Salgado'),
                Text('Salgado')
              ]),
            ),
            Container(
              padding: const EdgeInsets.all(32),
              color: ColorsApp.successColor,
              margin: const EdgeInsets.all(16),
              child: const Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                Text('José Manuel'),
                Text('Salgado'),
                Text('Salgado')
              ]),
            )
          ],
        ));
  }
}
