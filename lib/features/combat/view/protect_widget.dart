import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/common/view/text_widgets.dart';

import '../../../common/model/character_model.dart';
import '../model/protect_model.dart';

class ProtectWidget extends StatelessWidget {
  const ProtectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final model = ProtectModel(model: CharacterProvider.of(context));
    return Row(
      children: [
        RowCell('Тело', model.attrib, Colors.red),
        const BigText(text: '+'),
        RowCell('Броня', model.armor, Colors.black),
        const BigText(text: '+'),
        RowCell('Бонус', model.bonus, Colors.green),
        const BigText(text: '='),
        BigText(text: '${model.attrib + model.armor + model.bonus}'),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Column RowCell(String name, int value, Color color) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MediumText(text: name),
        BigText(
          text: '$value',
          color: color,
        ),
      ],
    );
  }
}
