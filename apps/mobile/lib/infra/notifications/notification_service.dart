import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'models/send_notificaton_dto.dart';

class NotificationService {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  final AndroidInitializationSettings _androidInitializationSettings =
      const AndroidInitializationSettings('@drawable/ic_stat_notification');

  NotificationService() {
    _intNotificationService();
  }

  _intNotificationService() async {
    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: _androidInitializationSettings,
    );

    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
    );
  }

  sendNotification(SendNotificationModel notificationDto) async {
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      notificationDto.title,
      notificationDto.topic,
      importance: Importance.max,
      priority: Priority.high,
    );

    NotificationDetails notificationDetails =
        NotificationDetails(android: androidNotificationDetails);

    await _flutterLocalNotificationsPlugin.show(
      notificationDto.id!,
      notificationDto.title,
      notificationDto.body,
      notificationDetails,
    );
  }
}
