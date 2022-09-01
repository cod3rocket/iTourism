import 'package:json_annotation/json_annotation.dart';

part 'event_model.g.dart';

@JsonSerializable()
class Event {
  String id;

  String name;

  String cityId;

  String banner;

  List<String> gallery;

  String description;

  String address;

  String map;

  DateTime createdAt;

  DateTime updatedAt;

  Event({
    required this.id,
    required this.name,
    required this.cityId,
    required this.banner,
    required this.gallery,
    required this.description,
    required this.address,
    required this.map,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  Map<String, dynamic> toJson() => _$EventToJson(this);
}
