import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:itourism_mobile/config/i18n.dart';
import 'package:localization/localization.dart';

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
          return NavigationBar(
            selectedIndex: appController.pageIndex,
            onDestinationSelected: appController.setPage,
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            destinations: [
              NavigationDestination(
                icon: const Icon(Icons.map_outlined),
                selectedIcon: const Icon(Icons.map_rounded),
                label: I18nWords.navigationBarItemAttractions.i18n(),
              ),
              NavigationDestination(
                icon: const Icon(Icons.calendar_today_outlined),
                selectedIcon: const Icon(Icons.calendar_today_rounded),
                label: I18nWords.navigationBarItemEvents.i18n(),
              ),
              NavigationDestination(
                icon: const Icon(Icons.help_outline_rounded),
                selectedIcon: const Icon(Icons.help_rounded),
                label: I18nWords.navigationBarItemPublicUtility.i18n(),
              ),
            ],
          );
        },
      ),
    );
  }
}
