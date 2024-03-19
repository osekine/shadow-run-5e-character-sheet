import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/widget/attribute_widget.dart';

import '../model/character_model.dart';

class AttributesScreen extends StatelessWidget {
  final CharacterModel character = CharacterModel();
  AttributesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [AttributeWidget(value: character.attributes.body, name: 'Body'), AttributeWidget(value: character.attributes.willpower, name: 'Wp')],),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [AttributeWidget(value: character.attributes.strength, name: 'Str'), AttributeWidget(value: character.attributes.logic, name: 'Log')],),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [AttributeWidget(value: character.attributes.agility, name: 'Agl'), AttributeWidget(value: character.attributes.intuition, name: 'Int')],),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [AttributeWidget(value: character.attributes.reaction, name: 'Rea'), AttributeWidget(value: character.attributes.charisma, name: 'Char')],),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [AttributeWidget(value: character.attributes.edge, name: 'Edge'), AttributeWidget(value: character.attributes.magic, name: 'Mag'), AttributeWidget(value: (character.attributes.entity*100).round(), name: 'Ent')], ),

        ],
      )
    );
  }
}