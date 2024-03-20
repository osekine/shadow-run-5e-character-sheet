import 'package:flutter/material.dart';

import '../model/health_model.dart';
import '../utility/text_widgets.dart';

class HealthWidget extends StatelessWidget {
  final HealthModel model;
  const HealthWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
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