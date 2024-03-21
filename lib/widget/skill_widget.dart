import 'package:flutter/material.dart';

import '../model/skill_model.dart';
import '../utility/text_widgets.dart';

class SkillWidget extends StatelessWidget {
  final SkillModel model;
  const SkillWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Flex(direction: Axis.horizontal, children: [
      Flexible(
        flex: 4,
        child: SmallText(text: model.name),
      ),
      Flexible(
        flex: 2,
        child: SmallText(text: model.attribute.toString()),
      ),
      Flexible(
        flex: 1,
        child: SmallText(text: model.level.toString()),
      ),
      Flexible(
        flex: 1,
        child: TextField(),
      ),
    ]);
  }
}
