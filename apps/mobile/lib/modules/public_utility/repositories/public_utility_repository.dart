import 'package:dio/dio.dart';

import '../models/public_utility_model.dart';

class PublicUtilityRepository {
  final Dio apiClient;

  PublicUtilityRepository(this.apiClient);

  Future<List<PublicUtility>> findAll() async {
    final data = [
      {
        'id': '1',
        'name': 'Prefeitura Municipal',
        'description': 'Prefeitura Municipal de Bandeirantes',
        'latitude': 0.0,
        'longitude': 0.0,
        'telephone': '4335422052',
        'createdAt': '2021-07-01T00:00:00.000Z',
        'updatedAt': '2021-07-01T00:00:00.000Z'
      },
      {
        'id': '2',
        'name': 'Conselho Tutelar',
        'description': 'Conselho Tutelar de Bandeirantes',
        'latitude': 0.0,
        'longitude': 0.0,
        'telephone': '4335426582',
        'createdAt': '2021-07-01T00:00:00.000Z',
        'updatedAt': '2021-07-01T00:00:00.000Z'
      },
      {
        'id': '3',
        'name': 'Correios',
        'description': 'Correios de Bandeirantes',
        'latitude': 0.0,
        'longitude': 0.0,
        'telephone': '4335423747',
        'createdAt': '2021-07-01T00:00:00.000Z',
        'updatedAt': '2021-07-01T00:00:00.000Z'
      },
      {
        'id': '4',
        'name': 'Posto de Saúde',
        'description': 'Posto de Saúde de Bandeirantes',
        'latitude': 0.0,
        'longitude': 0.0,
        'telephone': '4335424980',
        'createdAt': '2021-07-01T00:00:00.000Z',
        'updatedAt': '2021-07-01T00:00:00.000Z'
      },
    ];

    return data.map((e) => PublicUtility.fromJson(e)).toList();
  }
}
