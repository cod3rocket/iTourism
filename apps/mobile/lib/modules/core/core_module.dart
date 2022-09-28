import 'package:flutter_modular/flutter_modular.dart';
import 'package:itourism_mobile/infra/firebase/cloud_message/cloud_message_service.dart';
import 'package:itourism_mobile/infra/firebase/firebase_core.dart';
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
        AsyncBind(
          (i) => FirebaseCore.initialize(),
          export: true,
        ),
        Bind.lazySingleton((i) => NotificationService(), export: true),
        AsyncBind(
          (i) => CloudMessageService.initCloudMessageService(i.get()),
          export: true,
        ),
        Bind.lazySingleton((i) => ApiClient.createApi(), export: true),
      ];
}
