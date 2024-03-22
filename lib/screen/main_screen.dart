import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/model/attributes_model.dart';
import 'package:shadowrun_5e_character_sheet/screen/attributes_screen.dart';
import 'package:shadowrun_5e_character_sheet/screen/skills_screen.dart';
import 'package:shadowrun_5e_character_sheet/screen/weapons_screen.dart';
import 'package:shadowrun_5e_character_sheet/widget/weapon_list_widget.dart';

import '../model/character_model.dart';
import '../model/health_model.dart';
import '../widget/health_widget.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CharacterModel(
      attributes: Attributes(),
      health: HealthModel(),
      child: Scaffold(
          floatingActionButton: currentPageIndex == 2 ? FloatingActionButton(onPressed: ()async{
            await showDialog(context: context,builder: (context) => const WeaponListWidget() );
          }): null,
          bottomNavigationBar: NavigationBar(
            onDestinationSelected: (int index) {
              currentPageIndex = index;
              setState((){});
            },
            indicatorColor: Colors.amber,
            selectedIndex: currentPageIndex,
            destinations: const [
              NavigationDestination(icon: Icon(Icons.person), label: 'Attributes'),
              NavigationDestination(icon: Icon(Icons.star), label: 'Skills'),
              NavigationDestination(icon: Icon(Icons.fireplace), label: 'Weapons'),
            ],
          ),
          appBar: AppBar(
            foregroundColor: Colors.black,
            title: HealthWidget(),
          ),
          body: <Widget>[AttributesScreen(), SkillsScreen(), WeaponsScreen()][currentPageIndex]),
    );
  }
}
