import 'package:json_annotation/json_annotation.dart';

part 'StarWarsPerson.g.dart';

@JsonSerializable(includeIfNull: false)
class StarWarsPerson {
  final String name;
  final String height;
  final String mass;
  final String hair_color;
  final String skin_color;
  final String eye_color;
  final String gender;

  StarWarsPerson(this.name, this.height, this.mass, this.hair_color,
      this.skin_color, this.eye_color, this.gender);

  factory StarWarsPerson.fromJson(Map<String, dynamic> json) =>
      _$StarWarsPersonFromJson(json);

  Map<String, dynamic> toJson() => _$StarWarsPersonToJson(this);
}
