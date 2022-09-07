import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController appController = Modular.get<HomeController>();

  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const RouterOutlet(),
      bottomNavigationBar: Observer(
        builder: (_) {
          return BottomNavigationBar(
            currentIndex: appController.pageIndex,
            onTap: appController.setPage,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.map_rounded),
                label: 'Locais',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_rounded),
                label: 'Eventos',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.help_outline_rounded),
                label: 'Utilidades Publicas',
              ),
            ],
          );
        },
      ),
    );
  }
}
