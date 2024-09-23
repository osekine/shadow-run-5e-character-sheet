import 'package:shadowrun_5e_character_sheet/features/info/model/attribute_types.dart';

import '../../../common/model/character_model.dart';

class ProtectModel {
  final CharacterModel model;
  int _attrib = 0;
  int _armor = 0;
  int get attrib => _attrib;
  int get armor => _armor;
  int get rawProtect => attrib + armor + bonus;
  int bonus = 0;

  ProtectModel({required this.model}) {
    _attrib = model.attributes[CharacterAttributes.body]!.value;
    _armor = 0;
  }
}
