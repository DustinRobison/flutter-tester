// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CoolApi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoolApiRequest _$CoolApiRequestFromJson(Map json) {
  return CoolApiRequest(json['username'] as String, json['password'] as String);
}

Map<String, dynamic> _$CoolApiRequestToJson(CoolApiRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password
    };

CoolApiResponse _$CoolApiResponseFromJson(Map json) {
  return CoolApiResponse(json['token'] as String, json['userId'] as String);
}

Map<String, dynamic> _$CoolApiResponseToJson(CoolApiResponse instance) =>
    <String, dynamic>{'token': instance.token, 'userId': instance.userId};
