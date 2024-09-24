// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) =>
    CharacterModel(
      info: InfoModel.fromJson(json['info'] as Map<String, dynamic>),
      attributes: (json['attributes'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$CharacterAttributesEnumMap, k),
            AttributeModel.fromJson(e as Map<String, dynamic>)),
      ),
      health: HealthModel.fromJson(json['health'] as Map<String, dynamic>),
      weapons: (json['weapons'] as List<dynamic>)
          .map((e) => WeaponModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      skills: Skills.fromJson(json['skills'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharacterModelToJson(CharacterModel instance) =>
    <String, dynamic>{
      'info': instance.info,
      'attributes': instance.attributes
          .map((k, e) => MapEntry(_$CharacterAttributesEnumMap[k]!, e)),
      'health': instance.health,
      'weapons': instance.weapons,
      'skills': instance.skills,
    };

const _$CharacterAttributesEnumMap = {
  CharacterAttributes.strength: 'strength',
  CharacterAttributes.agility: 'agility',
  CharacterAttributes.body: 'body',
  CharacterAttributes.intuition: 'intuition',
  CharacterAttributes.willpower: 'willpower',
  CharacterAttributes.charisma: 'charisma',
  CharacterAttributes.logic: 'logic',
  CharacterAttributes.reaction: 'reaction',
  CharacterAttributes.magic: 'magic',
  CharacterAttributes.entity: 'entity',
  CharacterAttributes.edge: 'edge',
};
