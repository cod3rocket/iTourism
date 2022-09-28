import 'package:json_annotation/json_annotation.dart';

part 'public_utility_model.g.dart';

@JsonSerializable()
class PublicUtility {
  String id;

  String name;

  String description;

  double latitude;

  double longitude;

  String telephone;

  DateTime createdAt;

  DateTime updatedAt;

  PublicUtility({
    required this.id,
    required this.name,
    required this.description,
    required this.latitude,
    required this.longitude,
    required this.telephone,
    required this.createdAt,
    required this.updatedAt,
  });

  factory PublicUtility.fromJson(Map<String, dynamic> json) =>
      _$PublicUtilityFromJson(json);

  Map<String, dynamic> toJson() => _$PublicUtilityToJson(this);
}
