// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeaponModel _$WeaponModelFromJson(Map<String, dynamic> json) => WeaponModel(
      damageType: $enumDecodeNullable(_$DamageTypeEnumMap, json['damageType']),
      name: json['name'] as String?,
      type: json['type'] as String?,
      accuracy: json['accuracy'] as int?,
      damage: json['damage'] as int?,
      AP: json['AP'] as int?,
      magazine: json['magazine'] as int?,
      recoil: json['recoil'] as int?,
      firemode: (json['firemode'] as List<dynamic>)
          .map((e) => $enumDecodeNullable(_$FiremodeEnumMap, e))
          .toList(),
      mods: (json['mods'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : WeaponMod.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeaponModelToJson(WeaponModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'accuracy': instance.accuracy,
      'damage': instance.damage,
      'AP': instance.AP,
      'magazine': instance.magazine,
      'damageType': _$DamageTypeEnumMap[instance.damageType],
      'firemode': instance.firemode.map((e) => _$FiremodeEnumMap[e]).toList(),
      'recoil': instance.recoil,
      'mods': instance.mods,
    };

const _$DamageTypeEnumMap = {
  DamageType.flesh: 'flesh',
  DamageType.stun: 'stun',
};

const _$FiremodeEnumMap = {
  Firemode.ss: 'ss',
  Firemode.sa: 'sa',
  Firemode.fa: 'fa',
  Firemode.bf: 'bf',
};

WeaponMod _$WeaponModFromJson(Map<String, dynamic> json) => WeaponMod(
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$WeaponModToJson(WeaponMod instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
    };
