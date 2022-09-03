import 'package:flutter_modular/flutter_modular.dart';
import 'package:itourism_mobile/modules/attractions/attractions_module.dart';
import 'package:itourism_mobile/modules/core/core_module.dart';

import '../events/events_module.dart';
import '../public_utility/public_utility_module.dart';

import 'app_controller.dart';
import 'app_page.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  final List<Bind> binds = [
    Bind.singleton((i) => AppController()),
  ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, args) => const AppPage(),
          children: [
            ModuleRoute('/attractions', module: AttractionsModule()),
            ModuleRoute(
              '/events',
              module: EventsModule(),
            ),
            ModuleRoute(
              '/public-utility',
              module: PublicUtilityModule(),
            ),
          ],
        ),
      ];
}
