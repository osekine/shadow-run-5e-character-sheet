import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/model/info.dart';
import 'package:json_annotation/json_annotation.dart';

import '../model/attributes_model.dart';
import 'health_model.dart';
import 'skill_model.dart';
import 'weapon_model.dart';

part 'character_model.g.dart';

@JsonSerializable()
class CharacterModel {
  
  final InfoModel info;
  final Attributes attributes;
  final HealthModel health;
  final List<WeaponModel> weapons;
  final Skills skills;

  CharacterModel({
    required this.info,
    required this.attributes,
    required this.health,
    required this.weapons,
    required this.skills
  });

  CharacterModel.start({required this.attributes}) 
      : info = InfoModel(),
        health = HealthModel(),
         weapons = List.empty(growable: true),
        skills = Skills(model: attributes);

  factory CharacterModel.fromJson(Map<String, dynamic> json) => _$CharacterModelFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterModelToJson(this);

}

class CharacterProvider extends InheritedWidget {
  final CharacterModel model;

  @override
  bool updateShouldNotify(CharacterProvider old) {
    return model != old.model;
  }

  const CharacterProvider({
    Key? key,
    required this.model,
    required Widget child,
  }) : super(key: key, child: child);


  static CharacterModel of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CharacterProvider>()!.model;
  }

}

