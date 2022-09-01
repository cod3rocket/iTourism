import 'package:flutter_modular/flutter_modular.dart';
import 'package:itourism_mobile/modules/events/repositories/event_repository.dart';

import 'controllers/events_controller.dart';
import 'pages/event_page.dart';
import 'pages/events_page.dart';

class EventsModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => EventsRepository(i())),
        Bind.lazySingleton((i) => EventsController(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, args) => const EventsPage(),
          transition: TransitionType.fadeIn,
        ),
        ChildRoute(
          '/:eventId',
          child: (_, args) => EventPage(eventId: args.params['eventId']),
        ),
      ];
}
