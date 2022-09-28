// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_utility_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicUtility _$PublicUtilityFromJson(Map<String, dynamic> json) =>
    PublicUtility(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      telephone: json['telephone'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$PublicUtilityToJson(PublicUtility instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'telephone': instance.telephone,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
