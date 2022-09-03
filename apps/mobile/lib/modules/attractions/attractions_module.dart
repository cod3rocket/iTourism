import 'package:flutter_modular/flutter_modular.dart';

import 'controllers/attractions_controller.dart';
import 'pages/attraction_page.dart';
import 'pages/attractions_page.dart';
import 'repositories/attraction_repository.dart';

class AttractionsModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => AttractionsRepository(i())),
        Bind((i) => AttractionsController(i())),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => const AttractionsPage(),
      transition: TransitionType.fadeIn,
    ),
    ChildRoute(
      '/:attractionId',
      child: (_, args) =>
          AttractionPage(attractionId: args.params['attractionId']),
    ),
  ];
}
