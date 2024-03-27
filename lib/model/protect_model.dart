import 'package:flutter/material.dart';

import 'character_model.dart';

class ProtectModel
{
  final CharacterModel model;
  int _attrib = 0;
  int _armor = 0;
  int bonus = 0;

  ProtectModel({required this.model})
  {
    _attrib = model.attributes.body.value;
    _armor = 0;
  }
}