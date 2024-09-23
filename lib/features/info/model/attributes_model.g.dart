// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttributeModel _$AttributeModelFromJson(Map<String, dynamic> json) =>
    AttributeModel(
      name: json['name'] as String,
      value: json['value'] as int,
      min: json['min'] as int? ?? 0,
      max: json['max'] as int? ?? 6,
    );

Map<String, dynamic> _$AttributeModelToJson(AttributeModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'max': instance.max,
      'min': instance.min,
    };

Attributes _$AttributesFromJson(Map<String, dynamic> json) => Attributes(
      strength:
          AttributeModel.fromJson(json['strength'] as Map<String, dynamic>),
      agility: AttributeModel.fromJson(json['agility'] as Map<String, dynamic>),
      body: AttributeModel.fromJson(json['body'] as Map<String, dynamic>),
      reaction:
          AttributeModel.fromJson(json['reaction'] as Map<String, dynamic>),
      logic: AttributeModel.fromJson(json['logic'] as Map<String, dynamic>),
      intuition:
          AttributeModel.fromJson(json['intuition'] as Map<String, dynamic>),
      willpower:
          AttributeModel.fromJson(json['willpower'] as Map<String, dynamic>),
      charisma:
          AttributeModel.fromJson(json['charisma'] as Map<String, dynamic>),
      magic: AttributeModel.fromJson(json['magic'] as Map<String, dynamic>),
      edge: AttributeModel.fromJson(json['edge'] as Map<String, dynamic>),
      entity: AttributeModel.fromJson(json['entity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'strength': instance.strength,
      'agility': instance.agility,
      'body': instance.body,
      'reaction': instance.reaction,
      'logic': instance.logic,
      'intuition': instance.intuition,
      'willpower': instance.willpower,
      'charisma': instance.charisma,
      'magic': instance.magic,
      'edge': instance.edge,
      'entity': instance.entity,
    };

MatrixAttributes _$MatrixAttributesFromJson(Map<String, dynamic> json) =>
    MatrixAttributes(
      rating: json['rating'] as int,
      attack: json['attack'] as int,
      sleaze: json['sleaze'] as int,
      dataProc: json['dataProc'] as int,
      firewall: json['firewall'] as int,
    );

Map<String, dynamic> _$MatrixAttributesToJson(MatrixAttributes instance) =>
    <String, dynamic>{
      'attack': instance.attack,
      'rating': instance.rating,
      'sleaze': instance.sleaze,
      'dataProc': instance.dataProc,
      'firewall': instance.firewall,
    };
