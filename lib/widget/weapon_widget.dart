import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shadowrun_5e_character_sheet/model/weapon_model.dart';

import '../utility/text_widgets.dart';

class WeaponWidget extends StatelessWidget {
  final WeaponModel model;
  const WeaponWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return 
           Padding(
             padding: const EdgeInsets.all(25.0),
            child: IntrinsicHeight(
              child: SizedBox(
                width: constraints.maxWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flex(
                      direction: Axis.horizontal,
                      children: [
                        DataCell(title: 'Name', data: model.name!, flex: 6),
                        DataCell(title: 'Acc', data: model.accuracy!, flex: 1),
                        DataCell(title: 'DMG', data: model.damage!, flex: 1),
                        DataCell(title: 'AP', data: model.AP!, flex: 1),
                        DataCell(title: 'Rec', data: model.recoil!, flex: 1),
                      ],
                    )
                  ]
                           ),
              ),
            ),
           );
      }
        );
      
  }

  Widget DataCell(
      {required int flex, required String title, required dynamic data}) {
    return 
      
         Flexible(
            fit: FlexFit.tight,
            flex: flex,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SmallText(text: title),
                Container(color: Colors.white, child: SmallText(text:data.toString())),
              ],
            ),
  
    );
  }
}
