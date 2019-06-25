import 'package:json_annotation/json_annotation.dart';

part 'CoolApi.g.dart';

class CoolApi {
  final String path = "/v1/cool/path";
  CoolApiRequest request;
  CoolApiResponse response;
}

@JsonSerializable()
class CoolApiRequest {
  final String username;
  final String password;

  CoolApiRequest(this.username, this.password);

  factory CoolApiRequest.fromJson(Map<String, dynamic> json) =>
      _$CoolApiRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CoolApiRequestToJson(this);
}

@JsonSerializable()
class CoolApiResponse {
  final String token;
  final String userId;

  CoolApiResponse(this.token, this.userId);

  factory CoolApiResponse.fromJson(Map<String, dynamic> json) =>
      _$CoolApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CoolApiResponseToJson(this);
}
