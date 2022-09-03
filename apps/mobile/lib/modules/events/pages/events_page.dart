import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:itourism_mobile/modules/events/controllers/events_controller.dart';
import 'package:starbase/starbase.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final EventsController eventsController = Modular.get<EventsController>();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Eventos'),
        ),
        body: RefreshIndicator(
          onRefresh: eventsController.findAll,
          child: Observer(
            builder: (context) {
              if (eventsController.loading && eventsController.events.isEmpty) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (eventsController.events.isEmpty) {
                return const Center(
                  child: Text('Nenhum evento encontrado'),
                );
              }

              return ListView.builder(
                itemCount: eventsController.events.length,
                itemBuilder: (context, index) {
                  final event = eventsController.events[index];

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ImageCard(
                      title: event.name,
                      subtitle: event.description,
                      imageUrl: event.banner,
                      onTap: () {
                        Modular.to.pushNamed('/events/${event.id}');
                      },
                    ),
                  );
                },
              );
            },
          ),
        ));
  }
}
