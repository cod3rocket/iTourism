import 'package:flutter/material.dart';

import 'package:asuka/asuka.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:starbase/starbase.dart';

class AppWidget extends StatelessWidget {
  AppWidget({
    super.key,
  }) {
    Modular.setInitialRoute('/splash/');
    Modular.setObservers([Asuka.asukaHeroController]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'iTourism',
      builder: Asuka.builder,
      debugShowCheckedModeBanner: false,
      theme: StarbaseTheme.dark,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
