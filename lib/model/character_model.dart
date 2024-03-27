import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/model/electronic_model.dart';
import 'package:shadowrun_5e_character_sheet/model/info.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  factory CharacterModel.fromJson(Map<String, dynamic> json) => _$CharacterModelFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterModelToJson(this);

}

class CharacterProvider extends InheritedWidget {
  final CharacterModel model;

  Future<void> _saveCharacter() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('character', jsonEncode(model.toJson()));
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
    return context.dependOnInheritedWidgetOfExactType<CharacterProvider>()!.model;
  }

}

