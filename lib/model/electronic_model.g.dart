// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'electronic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ElectronicModel _$ElectronicModelFromJson(Map<String, dynamic> json) =>
    ElectronicModel(
      name: json['name'] as String,
      attributes: json['attributes'] == null
          ? null
          : MatrixAttributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ElectronicModelToJson(ElectronicModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'attributes': instance.attributes,
    };

DeckApplication _$DeckApplicationFromJson(Map<String, dynamic> json) =>
    DeckApplication(
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$DeckApplicationToJson(DeckApplication instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
    };

Deck _$DeckFromJson(Map<String, dynamic> json) => Deck(
      name: json['name'] as String,
      attributes: json['attributes'] == null
          ? null
          : MatrixAttributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
      appCount: json['appCount'] as int,
      apps: (json['apps'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : DeckApplication.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DeckToJson(Deck instance) => <String, dynamic>{
      'name': instance.name,
      'attributes': instance.attributes,
      'appCount': instance.appCount,
      'apps': instance.apps,
    };
