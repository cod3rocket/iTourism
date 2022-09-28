import 'package:flutter_modular/flutter_modular.dart';

import 'controllers/public_utility_controller.dart';
import 'pages/public_utility_page.dart';
import 'repositories/public_utility_repository.dart';

class PublicUtilityModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => PublicUtilityRepository(i())),
        Bind.lazySingleton(
          (i) => PublicUtilityController(i()),
          export: true,
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, args) => PublicUtilityPage(),
          transition: TransitionType.fadeIn,
        ),
      ];
}
