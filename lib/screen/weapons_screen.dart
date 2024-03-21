import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/model/weapon_model.dart';
import 'package:shadowrun_5e_character_sheet/widget/weapon_widget.dart';

class WeaponsScreen extends StatelessWidget {
  const WeaponsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WeaponWidget(model: weapons['Assault Rifles']!['AK']!);
  }
}