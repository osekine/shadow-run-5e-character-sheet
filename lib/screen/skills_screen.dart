import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/model/skill_model.dart';

import '../model/character_model.dart';
import '../widget/skill_widget.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final char = CharacterModel.of(context)!;
    final model = Skills(model: char);
    return ListView(
      children: [for (var skills in model.skillTypes) SkillTypeWidget(model: skills)],
    );
  }
}