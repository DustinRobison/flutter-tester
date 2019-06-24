// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'StarWarsPeople.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StarWarsPeople _$StarWarsPeopleFromJson(Map json) {
  return StarWarsPeople(
      json['count'] as int,
      json['next'] as String,
      json['previous'] as String,
      (json['results'] as List)
          ?.map((e) => e == null
              ? null
              : StarWarsPerson.fromJson((e as Map)?.map(
                  (k, e) => MapEntry(k as String, e),
                )))
          ?.toList());
}

Map<String, dynamic> _$StarWarsPeopleToJson(StarWarsPeople instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results?.map((e) => e?.toJson())?.toList()
    };
