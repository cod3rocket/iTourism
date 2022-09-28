import 'package:dio/dio.dart';

import '../models/attraction_model.dart';

class AttractionsRepository {
  final Dio apiClient;

  AttractionsRepository(
    this.apiClient,
  );

  Future<List<Attraction>> fetchAttractions() async {
    final response = await apiClient.get<List>('/v1/attractions');

    final data = response.data ?? [];

    return data.map((e) => Attraction.fromJson(e)).toList();
  }

  Future<Attraction> fetchAttraction(String id) async {
    final response = await apiClient.get<Response>('/v1/attractions/$id');

    final dynamic data = response.data ?? {};

    return Attraction.fromJson(data);
  }
}
