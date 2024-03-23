import 'package:json_annotation/json_annotation.dart';

part 'health_model.g.dart';

@JsonSerializable()
class HealthModel
{
  int fleshWounds = 1;
  int stunWounds = 1;
  int fleshDebuff = 0;
  int stunDebuff = 0;

  HealthModel({this.fleshWounds = 1, this.stunWounds = 1, this.fleshDebuff = 0, this.stunDebuff = 0});

  factory HealthModel.fromJson(Map<String, dynamic> json) => _$HealthModelFromJson(json);

  Map<String, dynamic> toJson() => _$HealthModelToJson(this);
}