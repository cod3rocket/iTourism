import 'package:flutter_modular/flutter_modular.dart';

import 'controllers/attractions_controller.dart';
import 'pages/attraction_page.dart';
import 'pages/attractions_page.dart';
import 'repositories/attraction_repository.dart';

class AttractionsModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => AttractionsRepository(i())),
        Bind.lazySingleton((i) => AttractionsController(i()), export: true),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => AttractionsPage(),
      transition: TransitionType.fadeIn,
    ),
    ChildRoute(
      '/:attractionId',
      child: (_, args) =>
          AttractionPage(attractionId: args.params['attractionId']),
    ),
  ];
}
