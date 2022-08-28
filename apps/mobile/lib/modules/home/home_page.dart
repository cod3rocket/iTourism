import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:itourism_mobile/infra/notifications/models/send_notificaton_dto.dart';
import 'package:itourism_mobile/infra/notifications/notification_service.dart';
import 'package:itourism_mobile/modules/home/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController homeController = Modular.get<HomeController>();
  final NotificationService notificationService =
      Modular.get<NotificationService>();

  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Observer(builder: (_) {
          return Text('Você clicou no botão ${homeController.value} vezes');
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          homeController.increment();
          notificationService.sendNotification(
            SendNotificationModel(
              title: 'Teste',
              body: 'Salve Salve Familia!',
              topic: 'Teste',
            ),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
