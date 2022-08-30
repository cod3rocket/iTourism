import 'package:flutter_modular/flutter_modular.dart';

import 'events_page.dart';

class EventsModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, args) => const EventsPage(),
          transition: TransitionType.fadeIn,
        ),
      ];
}
