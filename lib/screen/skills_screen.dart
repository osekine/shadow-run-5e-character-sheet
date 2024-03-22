import 'package:flutter/material.dart';

import '../model/character_model.dart';
import '../widget/skill_widget.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    final model = CharacterModel.of(context)!.skills;
    return ListView(
      children: [for (var skills in model.skillTypes) SkillTypeWidget(model: skills)],
    );
  }
}