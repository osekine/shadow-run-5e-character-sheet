import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shadowrun_5e_character_sheet/model/weapon_model.dart';

class WeaponWidget extends StatelessWidget {
  final WeaponModel model;
  const WeaponWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        DataCell(title: 'Name', data: model.name!, flex: 6),
        DataCell(title: 'Acc', data: model.name!, flex: 1),
        DataCell(title: 'DMG', data: model.name!, flex: 1),
        DataCell(title: 'AP', data: model.name!, flex: 1),
        DataCell(title: 'Rec', data: model.name!, flex: 1),
      ],
    ));
  }

  Padding DataCell({required int  flex, required String title, required String data}) {
    return Padding(
        padding: const EdgeInsets.all(6.0),
        child: Flexible(
            fit: FlexFit.tight,
            flex: flex,
            child: Column(
          children: [
            Text(title),
            Container(
              color: Colors.white,
              child: Text(data)),
        
          ],
        )),
      );
  }
}
