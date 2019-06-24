// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'StarWarsPerson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StarWarsPerson _$StarWarsPersonFromJson(Map json) {
  return StarWarsPerson(
      json['name'] as String,
      json['height'] as String,
      json['mass'] as String,
      json['hair_color'] as String,
      json['skin_color'] as String,
      json['eye_color'] as String,
      json['gender'] as String);
}

Map<String, dynamic> _$StarWarsPersonToJson(StarWarsPerson instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('height', instance.height);
  writeNotNull('mass', instance.mass);
  writeNotNull('hair_color', instance.hair_color);
  writeNotNull('skin_color', instance.skin_color);
  writeNotNull('eye_color', instance.eye_color);
  writeNotNull('gender', instance.gender);
  return val;
}
