import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/features/combat/model/weapon_model.dart';

import '../../../common/widget/text_widgets.dart';

class WeaponWidget extends StatelessWidget {
  final WeaponModel model;
  const WeaponWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 5.0),
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
                        dataCell(title: 'Name', data: model.name!, flex: 6),
                        dataCell(title: 'Acc', data: model.accuracy!, flex: 1),
                        dataCell(title: 'DMG', data: model.damage!, flex: 1),
                        dataCell(title: 'AP', data: model.AP!, flex: 1),
                        dataCell(title: 'Rec', data: model.recoil!, flex: 1),
                      ],
                    ),
                    Flex(direction: Axis.horizontal, children: [
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Row(children: [
                            const SmallText(text: 'Firemode'),
                            ...model.firemode.map((e) => firemodeCell(e!)),
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const SmallText(text: 'Ammo'),
                              const SizedBox(width: 5),
                              Container(
                                color: Colors.white,
                                child: SmallText(
                                    text:
                                        '${model.magazine}/${model.magazine}'),
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

  Widget dataCell(
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

Widget firemodeCell(Firemode firemode) {
  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: Color.fromARGB(
          255,
          Random().nextInt(155) + 100,
          Random().nextInt(155) + 100,
          Random().nextInt(155) + 100,
        ),
        shape: BoxShape.circle,
      ),
      child: Center(child: SmallText(text: firemode.name.toUpperCase())),
    ),
  );
}
