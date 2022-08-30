import 'package:flutter_modular/flutter_modular.dart';

import 'attractions_page.dart';

class AttractionsModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => const AttractionsPage(),
      transition: TransitionType.fadeIn,
    ),
  ];
}
