import 'package:json_annotation/json_annotation.dart';

part 'facts.g.dart';

@JsonSerializable()
class Facts {
  @JsonKey(name: 'text')
  String? text;

  @JsonKey(name: 'number')
  int? number;

  @JsonKey(name: 'found')
  bool? found;

  @JsonKey(name: 'type')
  String? type;

  Facts(
      {required this.text,
      required this.number,
      required this.found,
      required this.type});

  factory Facts.fromJson(Map<String, dynamic> json) => _$FactsFromJson(json);

  Map<String, dynamic> toJson() => _$FactsToJson(this);
}
