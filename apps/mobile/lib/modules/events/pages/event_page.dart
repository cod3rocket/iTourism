import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  final String eventId;

  const EventPage({Key? key, required this.eventId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EventPage'),
      ),
      body: const Center(
        child: Text(
          'WIP - EventPage',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
