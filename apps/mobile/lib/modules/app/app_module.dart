import 'package:flutter_modular/flutter_modular.dart';
import 'package:itourism_mobile/modules/attractions/attractions_module.dart';
import 'package:itourism_mobile/modules/core/core_module.dart';
import 'package:itourism_mobile/modules/home/home_module.dart';
import 'package:itourism_mobile/modules/maps/maps_module.dart';
import 'package:itourism_mobile/modules/splash/splash_module.dart';

import '../events/events_module.dart';
import '../public_utility/public_utility_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        CoreModule(),
        AttractionsModule(),
        EventsModule(),
      ];

  @override
  final List<Bind> binds = [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/home',
          module: HomeModule(),
        ),
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
        ModuleRoute(
          '/maps',
          module: MapModule(),
        ),
        ModuleRoute('/splash', module: SplashModule())
      ];
}
