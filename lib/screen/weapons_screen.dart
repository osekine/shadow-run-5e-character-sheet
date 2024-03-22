import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/model/weapon_model.dart';
import 'package:shadowrun_5e_character_sheet/widget/weapon_widget.dart';

import '../model/character_model.dart';

class WeaponsScreen extends StatelessWidget {
  const WeaponsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final weapons = CharacterModel.of(context)!.weapons; 
    return ListView.builder(itemCount: weapons.length,itemBuilder: (context, index) => WeaponWidget(model: weapons[index]));
  }
}