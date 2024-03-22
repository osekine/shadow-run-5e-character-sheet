import 'package:flutter/material.dart';

import '../model/character_model.dart';
import '../model/health_model.dart';
import '../utility/text_widgets.dart';
import 'chage_value_wiget.dart';

class HealthWidget extends StatefulWidget {
  const HealthWidget({super.key});

  @override
  State<HealthWidget> createState() => _HealthWidgetState();
}

class _HealthWidgetState extends State<HealthWidget> {
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
          child: GestureDetector(
            onDoubleTap: () async {
              int? a = await showDialog(
                          context: context,
                          builder: (context) => ChangeValueWidget(
                              value: model.fleshWounds,
                              title: 'Flesh Wounds'));
                      if (a != null) {
                        model.fleshWounds = a;
                        setState(() {});
                      }
            },
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              child: Center(child: BigText(text: '${model.fleshWounds}', color: Colors.red)),
            ),
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: GestureDetector(
            onDoubleTap: () async {
              int? a = await showDialog(
                          context: context,
                          builder: (context) => ChangeValueWidget(
                              value: model.stunWounds,
                              title: 'Stun Wounds'));
                      if (a != null) {
                        model.stunWounds = a;
                        setState(() {});
                      }
            },
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              child: Center(child: BigText(text: '${model.stunWounds}', color: Colors.blue)),
            ),
          ),
        ),
      ]
    );
  }
}