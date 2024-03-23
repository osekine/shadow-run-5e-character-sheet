import 'package:json_annotation/json_annotation.dart';

part 'health_model.g.dart';

@JsonSerializable()
class HealthModel
{
  int fleshWounds = 1;
  int stunWounds = 1;
  int fleshDebuff = 0;
  int stunDebuff = 0;
}