import 'package:flutter_modular/flutter_modular.dart';
import 'package:itourism_mobile/modules/attractions/controllers/attractions_controller.dart';
import 'package:itourism_mobile/modules/attractions/pages/attractions_page.dart';
import 'package:itourism_mobile/modules/attractions/repositories/attraction_repository.dart';
import 'package:itourism_mobile/modules/attractions/pages/attraction_page.dart';

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
