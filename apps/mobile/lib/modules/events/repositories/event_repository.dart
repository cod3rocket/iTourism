import 'package:dio/dio.dart';

import '../models/event_model.dart';

class EventsRepository {
  final Dio apiClient;

  EventsRepository(this.apiClient);

  Future<List<Event>> findAll() async {
    final response = await apiClient.get<List>('/v1/events');

    final data = response.data ?? [];

    return data.map((e) => Event.fromJson(e)).toList();
  }
}
