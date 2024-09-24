// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SkillModel _$SkillModelFromJson(Map<String, dynamic> json) => SkillModel(
      name: json['name'] as String,
      attribute: $enumDecode(_$CharacterAttributesEnumMap, json['attribute']),
      level: json['level'] as int? ?? 0,
      bonus: json['bonus'] as int? ?? 0,
      isDefault: json['isDefault'] as bool? ?? true,
    );

Map<String, dynamic> _$SkillModelToJson(SkillModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'attribute': _$CharacterAttributesEnumMap[instance.attribute]!,
      'level': instance.level,
      'bonus': instance.bonus,
      'isDefault': instance.isDefault,
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

SkillGroupModel _$SkillGroupModelFromJson(Map<String, dynamic> json) =>
    SkillGroupModel(
      name: json['name'] as String,
      skills: (json['skills'] as List<dynamic>)
          .map((e) => SkillModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isBroke: json['isBroke'] as bool? ?? false,
    );

Map<String, dynamic> _$SkillGroupModelToJson(SkillGroupModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'skills': instance.skills,
      'isBroke': instance.isBroke,
    };

SkillTypeModel _$SkillTypeModelFromJson(Map<String, dynamic> json) =>
    SkillTypeModel(
      name: json['name'] as String,
      skillGroups: (json['skillGroups'] as List<dynamic>)
          .map((e) => SkillGroupModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      freeSkills: (json['freeSkills'] as List<dynamic>)
          .map((e) => SkillModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SkillTypeModelToJson(SkillTypeModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'skillGroups': instance.skillGroups,
      'freeSkills': instance.freeSkills,
    };

Skills _$SkillsFromJson(Map<String, dynamic> json) => Skills(
      model: (json['model'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$CharacterAttributesEnumMap, k),
            AttributeModel.fromJson(e as Map<String, dynamic>)),
      ),
      skillTypes: (json['skillTypes'] as List<dynamic>)
          .map((e) => SkillTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SkillsToJson(Skills instance) => <String, dynamic>{
      'model': instance.model
          .map((k, e) => MapEntry(_$CharacterAttributesEnumMap[k]!, e)),
      'skillTypes': instance.skillTypes,
    };
