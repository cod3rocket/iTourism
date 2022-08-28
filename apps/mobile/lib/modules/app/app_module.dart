import 'package:flutter_modular/flutter_modular.dart';
import 'package:itourism_mobile/infra/notifications/notification_service.dart';
import 'package:itourism_mobile/modules/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [Bind.lazySingleton((i) => NotificationService())];
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/home', module: HomeModule()),
      ];
}
