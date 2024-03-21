import 'package:flutter/material.dart';

import '../model/character_model.dart';
import '../model/health_model.dart';
import '../utility/text_widgets.dart';

class HealthWidget extends StatelessWidget {
  const HealthWidget({super.key});

  @override
  Widget build(BuildContext context) {
  final HealthModel model = CharacterModel.of(context)!.health;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Center(child: BigText(text: '${model.fleshWounds}', color: Colors.red)),
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Center(child: BigText(text: '${model.stunWounds}', color: Colors.blue)),
          ),
        ),
      ]
    );
  }
}