import 'package:json_annotation/json_annotation.dart';

part 'attraction_model.g.dart';

enum AttractionType {
  attraction,
  bars,
  hotel,
  restaurants,
}

@JsonSerializable()
class Attraction {
  String id;

  String name;

  AttractionType type;

  String cityId;

  double latitude;

  double longitude;

  String banner;

  List<String> gallery;

  String description;

  String address;

  String map;

  num rate;

  DateTime createdAt;

  DateTime updatedAt;

  Attraction({
    required this.id,
    required this.name,
    required this.type,
    required this.cityId,
    required this.latitude,
    required this.longitude,
    required this.banner,
    required this.gallery,
    required this.description,
    required this.address,
    required this.map,
    required this.rate,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Attraction.fromJson(Map<String, dynamic> json) =>
      _$AttractionFromJson(json);

  Map<String, dynamic> toJson() => _$AttractionToJson(this);
}
