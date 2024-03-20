import 'package:flutter/material.dart';

import '../model/character_model.dart';
import '../widget/attribute_widget.dart';

class AttributesScreen extends StatelessWidget {
  final CharacterModel character;
  const AttributesScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AttributeWidget(
                    value: character.attributes.body,
                    name: 'Body',
                    color: Colors.red),
                AttributeWidget(
                    value: character.attributes.willpower,
                    name: 'Wp',
                    color: Colors.blue)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AttributeWidget(
                    value: character.attributes.strength,
                    name: 'Str',
                    color: Colors.red),
                AttributeWidget(
                    value: character.attributes.logic,
                    name: 'Log',
                    color: Colors.blue)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AttributeWidget(
                    value: character.attributes.agility,
                    name: 'Agl',
                    color: Colors.red),
                AttributeWidget(
                    value: character.attributes.intuition,
                    name: 'Int',
                    color: Colors.blue)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AttributeWidget(
                    value: character.attributes.reaction,
                    name: 'Rea',
                    color: Colors.red),
                AttributeWidget(
                    value: character.attributes.charisma,
                    name: 'Char',
                    color: Colors.blue)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AttributeWidget(
                    value: character.attributes.edge,
                    name: 'Edge',
                    color: Colors.black),
                AttributeWidget(
                    value: character.attributes.magic,
                    name: 'Mag',
                    color: Colors.purple),
                AttributeWidget(
                    value: (character.attributes.entity * 100).round(),
                    name: 'Ent',
                    color: Colors.black)
              ],
            ),
          ],
        );
  }
}