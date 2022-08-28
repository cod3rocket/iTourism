import 'package:flutter/material.dart';

import 'package:asuka/asuka.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:starbase/starbase.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/home');
    Modular.setObservers([Asuka.asukaHeroController]);
    return MaterialApp.router(
      title: 'iTourism',
      builder: Asuka.builder,
      debugShowCheckedModeBanner: false,
      theme: StarbaseTheme.light,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
