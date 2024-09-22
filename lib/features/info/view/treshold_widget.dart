import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/common/model/character_model.dart';

import '../model/attributes_model.dart';
import '../../../common/widget/text_widgets.dart';

class TresholdWidget extends StatelessWidget {
  const TresholdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final model = TresholdModel(model: CharacterProvider.of(context));
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TresholdCell('Физ', model.physical),
        TresholdCell('Мент', model.mental),
        TresholdCell('Соц', model.social),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Column TresholdCell(String name, int value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MediumText(text: name),
        MediumText(text: '$value'),
      ],
    );
  }
}
