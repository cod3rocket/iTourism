// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attraction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attraction _$AttractionFromJson(Map<String, dynamic> json) => Attraction(
      id: json['id'] as String,
      name: json['name'] as String,
      type: $enumDecode(_$AttractionTypeEnumMap, json['type']),
      cityId: json['cityId'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      banner: json['banner'] as String,
      gallery:
          (json['gallery'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String,
      address: json['address'] as String,
      map: json['map'] as String,
      rate: json['rate'] as num,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$AttractionToJson(Attraction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$AttractionTypeEnumMap[instance.type]!,
      'cityId': instance.cityId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'banner': instance.banner,
      'gallery': instance.gallery,
      'description': instance.description,
      'address': instance.address,
      'map': instance.map,
      'rate': instance.rate,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$AttractionTypeEnumMap = {
  AttractionType.all: 'all',
  AttractionType.attraction: 'attraction',
  AttractionType.bars: 'bars',
  AttractionType.hotel: 'hotel',
  AttractionType.restaurants: 'restaurants',
};
