import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/features/combat/model/weapon_model.dart';
import 'package:shadowrun_5e_character_sheet/common/view/text_widgets.dart';

class WeaponListWidget extends StatefulWidget {
  const WeaponListWidget({super.key});

  @override
  State<WeaponListWidget> createState() => _WeaponListWidgetState();
}

class _WeaponListWidgetState extends State<WeaponListWidget> {
  late List<String> chosenWeapon;

  @override
  void initState() {
    chosenWeapon = ['', ''];
    super.initState();
  }

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
                          color: chosenWeapon[0] == data.key &&
                                  chosenWeapon[1] == w.key
                              ? Colors.amber
                              : Colors.white,
                          child: GestureDetector(
                            onTap: () => setState(() {
                              chosenWeapon[0] = data.key;
                              chosenWeapon[1] = w.key;
                            }),
                            child: SizedBox(
                                height: 60,
                                child: Center(
                                    child: SmallText(text: w.value.name!))),
                          ),
                        ),
                    ],
                  ),
                );
              }),
        ),
        SizedBox(
            height: 60,
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(4, 0, 2, 0),
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Container(
                        color: Colors.grey,
                        child: const Center(
                            child: Icon(
                          Icons.clear,
                          color: Colors.white,
                        ))),
                  ),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(2, 0, 4, 0),
                  child: GestureDetector(
                    onTap: () {
                      WeaponModel? newWeapon;
                      if (chosenWeapon[0] != '' && chosenWeapon[1] != '') {
                        newWeapon =
                            weaponList[chosenWeapon[0]]![chosenWeapon[1]];
                      }
                      Navigator.of(context).pop(newWeapon);
                    },
                    child: Container(
                        color: Colors.grey,
                        child: const Center(
                            child: Icon(
                          Icons.check,
                          color: Colors.white,
                        ))),
                  ),
                )),
              ],
            ))
      ],
    );
  }
}
