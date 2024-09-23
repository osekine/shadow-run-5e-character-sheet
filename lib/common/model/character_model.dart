import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shadowrun_5e_character_sheet/common/data/i_repository.dart';
import 'package:shadowrun_5e_character_sheet/features/info/model/attribute_types.dart';
import 'package:shadowrun_5e_character_sheet/features/info/model/info.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../features/info/model/attributes_model.dart';
import '../../features/combat/model/health_model.dart';
import '../../features/skills/model/skill_model.dart';
import '../../features/combat/model/weapon_model.dart';

part 'character_model.g.dart';

@JsonSerializable()
class CharacterModel {
  final InfoModel info;
  late final Map<CharacterAttributes, AttributeModel> attributes;
  final HealthModel health;
  final List<WeaponModel> weapons;
  late final Skills skills;
  // final List<ElectronicModel> devices;

  CharacterModel({
    required this.info,
    required this.attributes,
    required this.health,
    required this.weapons,
    required this.skills,
    // required this.devices
  });

  CharacterModel.start()
      : info = InfoModel(),
        health = HealthModel(),
        weapons = List.empty(growable: true) {
    attributes = {
      for (var element in CharacterAttributes.values)
        element: AttributeModel(
          name: element.name,
          value: 1,
        )
    };
    skills = Skills.start(model: attributes);
  }
  // devices = List.empty(growable: true);

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterModelToJson(this);
}

class CharacterProvider extends InheritedWidget {
  const CharacterProvider({
    super.key,
    required this.model,
    required super.child,
  });

  final CharacterModel model;

  Future<void> _saveCharacter() async {
    await GetIt.I.get<IRepository>().saveCharacter(model);
  }

  @override
  bool updateShouldNotify(CharacterProvider oldWidget) {
    _saveCharacter();
    return model != oldWidget.model;
  }

  static CharacterModel of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<CharacterProvider>()!
        .model;
  }
}
