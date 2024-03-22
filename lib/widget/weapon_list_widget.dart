import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shadowrun_5e_character_sheet/model/weapon_model.dart';
import 'package:shadowrun_5e_character_sheet/utility/text_widgets.dart';

class WeaponListWidget extends StatelessWidget {
  const WeaponListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: weaponList.length,
              itemBuilder: (context, index) {
                final data = weaponList.entries.elementAt(index);
                return Card(
                  color: Colors.grey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MediumText(text: data.key),
                      for (var w in data.value.entries)
                        Card(
                          child: SizedBox(
                              height: 40,
                              child: Center(
                                  child: SmallText(text: w.value.name!))),
                        ),
                    ],
                  ),
                );
              }),
        ),
        SizedBox(height: 60, child: Row(
          
          children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.fromLTRB(4, 0, 2, 0),
            child: GestureDetector(child: Container(color: Colors.grey,child: const Center(child: Icon(Icons.clear, color: Colors.white,))),),
          )),
          
          Expanded(child: Padding(
            padding: const EdgeInsets.fromLTRB(2,0,4,0),
            child: GestureDetector(child: Container(color: Colors.grey,child: const Center(child: Icon(Icons.check, color: Colors.white,))),),
          )),

        ],))
      ],
    );
  }
}
