import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/screen/attributes_screen.dart';

import '../model/character_model.dart';
import '../widget/health_widget.dart';

class MainScreen extends StatefulWidget {

  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final CharacterModel character = CharacterModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: HealthWidget(model: character.health),
        ),
        body: AttributesScreen(character: character));
  }
}
