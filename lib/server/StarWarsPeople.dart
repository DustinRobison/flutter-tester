import 'package:json_annotation/json_annotation.dart';
import 'package:my_flutter_app/server/StarWarsPerson.dart';

part 'StarWarsPeople.g.dart';

@JsonSerializable()
class StarWarsPeople {
  StarWarsPeople(this.count, this.next, this.previous, this.results);

  final int count;
  final String next;
  final String previous;
  final List<StarWarsPerson> results;

  factory StarWarsPeople.fromJson(Map<String, dynamic> json) =>
      _$StarWarsPeopleFromJson(json);

  Map<String, dynamic> toJson() => _$StarWarsPeopleToJson(this);
}
