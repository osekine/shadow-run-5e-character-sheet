// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HealthModel _$HealthModelFromJson(Map<String, dynamic> json) => HealthModel(
      fleshWounds: json['fleshWounds'] as int? ?? 1,
      stunWounds: json['stunWounds'] as int? ?? 1,
      fleshDebuff: json['fleshDebuff'] as int? ?? 0,
      stunDebuff: json['stunDebuff'] as int? ?? 0,
    );

Map<String, dynamic> _$HealthModelToJson(HealthModel instance) =>
    <String, dynamic>{
      'fleshWounds': instance.fleshWounds,
      'stunWounds': instance.stunWounds,
      'fleshDebuff': instance.fleshDebuff,
      'stunDebuff': instance.stunDebuff,
    };
