import 'package:dio/dio.dart';
import 'package:itourism_mobile/modules/attractions/models/attraction_model.dart';

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
}
