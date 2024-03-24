// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) =>
    CharacterModel(
      info: InfoModel.fromJson(json['info'] as Map<String, dynamic>),
      attributes:
          Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
      health: HealthModel.fromJson(json['health'] as Map<String, dynamic>),
      weapons: (json['weapons'] as List<dynamic>)
          .map((e) => WeaponModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      skills: Skills.fromJson(json['skills'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharacterModelToJson(CharacterModel instance) =>
    <String, dynamic>{
      'info': instance.info,
      'attributes': instance.attributes,
      'health': instance.health,
      'weapons': instance.weapons,
      'skills': instance.skills,
    };
