import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/features/info/model/attribute_types.dart';
import 'package:shadowrun_5e_character_sheet/features/info/view/treshold_widget.dart';

import '../../../common/model/character_model.dart';
import '../../../common/view/text_widgets.dart';
import 'attribute_widget.dart';

class AttributesScreen extends StatelessWidget {
  const AttributesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CharacterModel character = CharacterProvider.of(context);
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AttributeWidget(
                model: character.attributes[CharacterAttributes.body]!,
                color: Colors.red),
            AttributeWidget(
                model: character.attributes[CharacterAttributes.willpower]!,
                color: Colors.blue),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AttributeWidget(
                model: character.attributes[CharacterAttributes.strength]!,
                color: Colors.red),
            AttributeWidget(
                model: character.attributes[CharacterAttributes.logic]!,
                color: Colors.blue),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AttributeWidget(
                model: character.attributes[CharacterAttributes.agility]!,
                color: Colors.red),
            AttributeWidget(
                model: character.attributes[CharacterAttributes.intuition]!,
                color: Colors.blue),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AttributeWidget(
                model: character.attributes[CharacterAttributes.reaction]!,
                color: Colors.red),
            AttributeWidget(
                model: character.attributes[CharacterAttributes.charisma]!,
                color: Colors.blue),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AttributeWidget(
                model: character.attributes[CharacterAttributes.edge]!,
                color: Colors.black),
            AttributeWidget(
                model: character.attributes[CharacterAttributes.magic]!,
                color: Colors.black),
            AttributeWidget(
                model: character.attributes[CharacterAttributes.entity]!,
                color: Colors.black),
          ],
        ),
        const Center(child: BigText(text: 'Пределы')),
        const TresholdWidget(),
      ],
    );
  }
}
