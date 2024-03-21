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
                AttributeWidget(model: character.attributes.body, color: Colors.red),
                AttributeWidget(model: character.attributes.willpower, color: Colors.blue),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AttributeWidget(model: character.attributes.strength, color: Colors.red),
                AttributeWidget(model: character.attributes.logic, color: Colors.blue),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AttributeWidget(model: character.attributes.agility, color: Colors.red),
                AttributeWidget(model: character.attributes.intuition, color: Colors.blue),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AttributeWidget(model: character.attributes.reaction, color: Colors.red),
                AttributeWidget(model: character.attributes.charisma, color: Colors.blue),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AttributeWidget(model: character.attributes.edge, color: Colors.black),
                AttributeWidget(model: character.attributes.magic, color: Colors.black),
                AttributeWidget(model: character.attributes.entity, color: Colors.black),
              ],
            ),
          ],
        );
  }
}

