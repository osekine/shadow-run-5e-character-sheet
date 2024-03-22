import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/widget/weapon_widget.dart';

import '../model/character_model.dart';

class WeaponsScreen extends StatefulWidget {
  const WeaponsScreen({super.key});

  @override
  State<WeaponsScreen> createState() => _WeaponsScreenState();
}

class _WeaponsScreenState extends State<WeaponsScreen> {
  @override
  Widget build(BuildContext context) {
    final weapons = CharacterModel.of(context)!.weapons; 
    return ListView.builder(itemCount: weapons.length,itemBuilder: (context, index) => WeaponWidget(model: weapons[index]));
  }
}