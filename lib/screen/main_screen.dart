import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/model/attributes_model.dart';
import 'package:shadowrun_5e_character_sheet/screen/attributes_screen.dart';
import 'package:shadowrun_5e_character_sheet/screen/skills_screen.dart';
import 'package:shadowrun_5e_character_sheet/screen/weapons_screen.dart';
import 'package:shadowrun_5e_character_sheet/widget/weapon_list_widget.dart';

import '../model/character_model.dart';
import '../model/health_model.dart';
import '../widget/health_widget.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CharacterModel(
      attributes: Attributes(),
      health: HealthModel(),
      child: const ProviderWidget(),
    );
  }
}

class ProviderWidget extends StatefulWidget {
  const ProviderWidget({super.key});

  @override
  State<ProviderWidget> createState() => _ProviderWidgetState();
}

class _ProviderWidgetState extends State<ProviderWidget> {
  int currentPageIndex = 0;
  late CharacterModel model;

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    model = CharacterModel.of(context)!;
    return Scaffold(
          floatingActionButton: currentPageIndex == 2 ? FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: ()async{
            final weapon = await showDialog(context: context, builder: (context) => const WeaponListWidget() );
            if(weapon!=null){
              model.weapons.add(weapon);
            }
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
            title: const HealthWidget(),
          ),
          body: <Widget>[const AttributesScreen(), const SkillsScreen(), const WeaponsScreen()][currentPageIndex]);
  }
}