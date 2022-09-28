import 'package:flutter/material.dart';

import 'package:asuka/asuka.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';
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
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('pt', 'BR'),
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        if (supportedLocales.contains(locale)) {
          return locale;
        }

        if (locale?.languageCode == 'pt') {
          return const Locale('pt', 'BR');
        }

        return const Locale('en', 'US');
      },
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        LocalJsonLocalization.delegate,
      ],
    );
  }
}
