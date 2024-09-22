import 'dart:async';

import 'package:shadowrun_5e_character_sheet/common/model/character_model.dart';

abstract class IRepository {
  void init();
  Future<CharacterModel?> loadCharacter();
  Future<void> saveCharacter(CharacterModel model);
}
