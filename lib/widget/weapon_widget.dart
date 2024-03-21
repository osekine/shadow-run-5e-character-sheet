import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shadowrun_5e_character_sheet/model/weapon_model.dart';

import '../utility/text_widgets.dart';

class WeaponWidget extends StatelessWidget {
  final WeaponModel model;
  const WeaponWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          color: Colors.grey,
          child: IntrinsicHeight(
            child: SizedBox(
              width: constraints.maxWidth,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // direction: Axis.horizontal,
                      children: [
                        DataCell(title: 'Name', data: model.name!, flex: 6),
                        DataCell(title: 'Acc', data: model.accuracy!, flex: 1),
                        DataCell(title: 'DMG', data: model.damage!, flex: 1),
                        DataCell(title: 'AP', data: model.AP!, flex: 1),
                        DataCell(title: 'Rec', data: model.recoil!, flex: 1),
                      ],
                    ),
                    Flex(direction: Axis.horizontal, children: [
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Row(children: [
                            SmallText(text: 'Firemode'),
                            ...model.firemode.map((e) => FiremodeCell(e!)),
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SmallText(text: 'Ammo'),
                              SizedBox(width: 5),
                              Container(
                                color: Colors.white,
                                child: SmallText(
                                    text: '${model.magazine}/${model.magazine}'),
                              )
                            ]),
                      ),
                    ])
                  ]),
            ),
          ),
        ),
      );
    });
  }

  Widget DataCell(
      {required int flex, required String title, required dynamic data}) {
    return Flexible(
      fit: FlexFit.tight,
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SmallText(text: title),
            Container(
                color: Colors.white, child: SmallText(text: data.toString())),
          ],
        ),
      ),
    );
  }
}

Widget FiremodeCell(Firemode firemode) {
  return Container(
    child: SmallText(text: firemode.toString()),
    width: 18,
    height: 18,
    decoration: BoxDecoration(
      color: Color.fromARGB(
        255,
        Random().nextInt(255),
        Random().nextInt(255),
        Random().nextInt(255),
      ),
      shape: BoxShape.circle,
    ),
  );
}
