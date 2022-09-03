import 'package:flutter_modular/flutter_modular.dart';
import 'package:itourism_mobile/modules/maps/controllers/map_controller.dart';
import 'package:itourism_mobile/modules/maps/pages/map_page.dart';

class MapModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => MapController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, args) => MapPage(title: args.data?.title ?? 'MapPage'),
        ),
      ];
}
