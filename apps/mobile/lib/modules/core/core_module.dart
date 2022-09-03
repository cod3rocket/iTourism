import 'package:flutter_modular/flutter_modular.dart';
import 'package:itourism_mobile/infra/firebase/core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:itourism_mobile/infra/api/http/api_client.dart';
import 'package:itourism_mobile/infra/notification/notification_service.dart';

class CoreModule extends Module {
  @override
  List<Bind> get binds => [
        AsyncBind<SharedPreferences>(
          (i) => SharedPreferences.getInstance(),
          export: true,
        ),
        AsyncBind((i) => FirebaseCore.initialize()),
        Bind.lazySingleton((i) => NotificationService(), export: true),
        Bind.lazySingleton((i) => ApiClient.createApi(), export: true),
      ];
}
