import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/screen/attributes_screen.dart';
import 'package:shadowrun_5e_character_sheet/screen/skills_screen.dart';

import '../model/character_model.dart';
import '../widget/health_widget.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final CharacterModel character = CharacterModel();
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            currentPageIndex = index;
            setState((){});
          },
          indicatorColor: Colors.amber,
          selectedIndex: currentPageIndex,
          destinations: [
            NavigationDestination(icon: Icon(Icons.person), label: 'Attributes'),
            NavigationDestination(icon: Icon(Icons.star), label: 'Skills'),
          ],
        ),
        appBar: AppBar(
          foregroundColor: Colors.black,
          title: HealthWidget(model: character.health),
        ),
        body: <Widget>[AttributesScreen(character: character), SkillsScreen()][currentPageIndex]);
  }
}
