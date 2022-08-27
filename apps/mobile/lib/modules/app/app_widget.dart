import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:starbase/starbase.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/home');
    return MaterialApp.router(
      title: 'iToursim',
      debugShowCheckedModeBanner: false,
      theme: StarbaseTheme.light,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
