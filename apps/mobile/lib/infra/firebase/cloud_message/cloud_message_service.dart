// ignore_for_file: avoid_print
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:itourism_mobile/infra/notification/models/send_notification_model.dart';
import 'package:itourism_mobile/infra/notification/notification_service.dart';

class CloudMessageService {
  static Future<FirebaseMessaging> initCloudMessageService(
      NotificationService notificationService) async {
    print('Initializing Cloud Message Service');
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    final fcmToken = await messaging.getToken();

    print('====================TOKEN=======================');
    print(fcmToken);

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    print('User granted permission: ${settings.authorizationStatus}');

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      notificationService.sendNotification(
        SendNotificationModel(
          title: message.notification!.title!,
          body: message.notification!.body!,
          topic: 'topic',
        ),
      );
    });

    return messaging;
  }
}
