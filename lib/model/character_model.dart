import 'package:flutter/material.dart';

import '../model/attributes_model.dart';
import 'health_model.dart';

class CharacterModel extends InheritedWidget {
  final Attributes attributes;
  final HealthModel health;

  const CharacterModel({
    Key? key,
    required this.attributes,
    required this.health,
    required Widget child,
  })  :
        super(key: key, child: child);

  @override
  bool updateShouldNotify(CharacterModel old) {
    return attributes != old.attributes || health != old.health;
  }

  static CharacterModel? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CharacterModel>();
  }

}