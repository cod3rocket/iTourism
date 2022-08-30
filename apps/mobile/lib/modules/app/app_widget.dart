import 'package:flutter/material.dart';

import 'package:asuka/asuka.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:itourism_mobile/modules/app/app_module.dart';
import 'package:starbase/starbase.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/home/');
    Modular.setObservers([Asuka.asukaHeroController]);

    return FutureBuilder(
      future: Modular.isModuleReady<AppModule>(),
      builder: (_, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp.router(
            title: 'iTourism',
            builder: Asuka.builder,
            debugShowCheckedModeBanner: false,
            theme: StarbaseTheme.dark,
            routeInformationParser: Modular.routeInformationParser,
            routerDelegate: Modular.routerDelegate,
          );
        }
        return const SplashScreenPage();
      },
    );
  }
}
