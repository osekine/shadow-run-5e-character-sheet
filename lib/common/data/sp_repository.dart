import 'dart:async';
import 'dart:convert';

import 'package:shadowrun_5e_character_sheet/common/data/i_repository.dart';
import 'package:shadowrun_5e_character_sheet/common/model/character_model.dart';
import 'package:shadowrun_5e_character_sheet/features/info/model/attributes_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesRepository implements IRepository {
  SharedPreferences? _prefs;

  SharedPreferencesRepository._();

  factory SharedPreferencesRepository() {
    final instance = SharedPreferencesRepository._();
    return instance;
  }

  @override
  Future<CharacterModel?> loadCharacter() async {
    _prefs ??= await SharedPreferences.getInstance();

    final json = _prefs?.getString('character');

    //TODO: maybe there is a better approach

    //return a default character if there is no local data
    return json != null
        ? CharacterModel.fromJson(jsonDecode(json))
        // TODO: change later
        : CharacterModel.start();
  }

  @override
  Future<void> saveCharacter(CharacterModel model) async {
    _prefs?.setString('character', jsonEncode(model.toJson()));
  }

  @override
  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }
}
