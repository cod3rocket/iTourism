import 'package:flutter_modular/flutter_modular.dart';

import 'public_utility_page.dart';

class PublicUtilityModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, args) => const PublicUtilityPage(),
          transition: TransitionType.fadeIn,
        ),
      ];
}
