import 'package:flutter_modular/flutter_modular.dart';
import 'package:itourism_mobile/modules/attractions/attractions_module.dart';
import 'package:itourism_mobile/modules/events/events_module.dart';
import 'package:itourism_mobile/modules/public_utility/public_utility_module.dart';

import 'controllers/home_controller.dart';
import 'pages/home_page.dart';

class HomeModule extends Module {
  @override
  List<Module> get imports => [
        AttractionsModule(),
        EventsModule(),
      ];

  @override
  final List<Bind> binds = [
    Bind.singleton((i) => HomeController()),
  ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, args) => HomePage(),
          children: [
            ModuleRoute(
              '/attractions',
              module: AttractionsModule(),
            ),
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
