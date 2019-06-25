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

Map<String, dynamic> _$StarWarsPersonToJson(StarWarsPerson instance) =>
    <String, dynamic>{
      'name': instance.name,
      'height': instance.height,
      'mass': instance.mass,
      'hair_color': instance.hair_color,
      'skin_color': instance.skin_color,
      'eye_color': instance.eye_color,
      'gender': instance.gender
    };
