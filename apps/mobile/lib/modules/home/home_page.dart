import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:itourism_mobile/modules/home/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController homeController = Modular.get<HomeController>();

  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Observer(builder: (_) {
          return Text('Você clicou no botão ${homeController.value} vezes');
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: homeController.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
