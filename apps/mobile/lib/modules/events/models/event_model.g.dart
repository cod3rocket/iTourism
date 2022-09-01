// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      id: json['id'] as String,
      name: json['name'] as String,
      cityId: json['cityId'] as String,
      banner: json['banner'] as String,
      gallery:
          (json['gallery'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String,
      address: json['address'] as String,
      map: json['map'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cityId': instance.cityId,
      'banner': instance.banner,
      'gallery': instance.gallery,
      'description': instance.description,
      'address': instance.address,
      'map': instance.map,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
