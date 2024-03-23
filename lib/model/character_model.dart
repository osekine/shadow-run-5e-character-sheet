import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/model/info.dart';

import '../model/attributes_model.dart';
import 'health_model.dart';
import 'skill_model.dart';
import 'weapon_model.dart';

class CharacterModel extends InheritedWidget {
  
  final InfoModel info = InfoModel();
  final Attributes attributes;
  final HealthModel health;
  final List<WeaponModel> weapons;
  final Skills skills;

  CharacterModel({
    super.key,
    required this.attributes,
    required this.health,
    required super.child, 
  })  : weapons = List.empty(growable: true),
        skills = Skills(model: attributes);

  @override
  bool updateShouldNotify(CharacterModel old) {
    return attributes != old.attributes || health != old.health;
  }

  static CharacterModel? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CharacterModel>();
  }
}