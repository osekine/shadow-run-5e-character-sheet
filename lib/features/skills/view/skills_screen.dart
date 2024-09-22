import 'package:flutter/material.dart';

import '../../../common/model/character_model.dart';
import 'skill_widget.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = CharacterProvider.of(context).skills;
    return ListView(
      children: [
        for (var skills in model.skillTypes) SkillTypeWidget(model: skills)
      ],
    );
  }
}
