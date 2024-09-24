// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttributeModel _$AttributeModelFromJson(Map<String, dynamic> json) =>
    AttributeModel(
      name: json['name'] as String,
      value: json['value'] as int,
      min: json['min'] as int? ?? 1,
      max: json['max'] as int? ?? 6,
    );

Map<String, dynamic> _$AttributeModelToJson(AttributeModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'max': instance.max,
      'min': instance.min,
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
