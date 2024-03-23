// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoModel _$InfoModelFromJson(Map<String, dynamic> json) => InfoModel(
      name: json['name'] as String?,
      race: json['race'] as String?,
      gender: json['gender'] as String?,
      weigth: json['weigth'] as int?,
      height: json['height'] as int?,
      money: json['money'] as int?,
    );

Map<String, dynamic> _$InfoModelToJson(InfoModel instance) => <String, dynamic>{
      'name': instance.name,
      'race': instance.race,
      'gender': instance.gender,
      'weigth': instance.weigth,
      'height': instance.height,
      'money': instance.money,
    };
