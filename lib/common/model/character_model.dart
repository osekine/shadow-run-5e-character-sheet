import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shadowrun_5e_character_sheet/common/data/i_repository.dart';
import 'package:shadowrun_5e_character_sheet/features/matrix/model/electronic_model.dart';
import 'package:shadowrun_5e_character_sheet/features/info/model/info.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/info/model/attributes_model.dart';
import '../../features/combat/model/health_model.dart';
import '../../features/skills/model/skill_model.dart';
import '../../features/combat/model/weapon_model.dart';

part 'character_model.g.dart';

@JsonSerializable()
class CharacterModel {
  final InfoModel info;
  final Attributes attributes;
  final HealthModel health;
  final List<WeaponModel> weapons;
  final Skills skills;
  // final List<ElectronicModel> devices;

  CharacterModel({
    required this.info,
    required this.attributes,
    required this.health,
    required this.weapons,
    required this.skills,
    // required this.devices
  });

  CharacterModel.start({required this.attributes})
      : info = InfoModel(),
        health = HealthModel(),
        weapons = List.empty(growable: true),
        skills = Skills.start(model: attributes);
  // devices = List.empty(growable: true);

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterModelToJson(this);
}

class CharacterProvider extends InheritedWidget {
  final CharacterModel model;

  Future<void> _saveCharacter() async {
    await GetIt.I.get<IRepository>().saveCharacter(model);
  }

  @override
  bool updateShouldNotify(CharacterProvider old) {
    _saveCharacter();
    return model != old.model;
  }

  const CharacterProvider({
    super.key,
    required this.model,
    required super.child,
  });

  static CharacterModel of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<CharacterProvider>()!
        .model;
  }
}
