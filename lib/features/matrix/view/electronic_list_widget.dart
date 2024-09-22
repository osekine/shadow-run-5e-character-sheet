import 'package:flutter/material.dart';

import '../model/electronic_model.dart';
import '../../../common/widget/text_widgets.dart';

class ElectronicListWidget extends StatefulWidget {
  const ElectronicListWidget({super.key});

  @override
  State<ElectronicListWidget> createState() => _ElectronicListWidgetState();
}

class _ElectronicListWidgetState extends State<ElectronicListWidget> {
  late List<String> chosenDevice;

  @override
  void initState() {
    chosenDevice = ['', ''];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: devicesList.length,
              itemBuilder: (context, index) {
                final data = devicesList.entries.elementAt(index);
                return Card(
                  color: Colors.grey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MediumText(text: data.key),
                      for (var w in data.value.entries)
                        Card(
                          color: chosenDevice[0] == data.key &&
                                  chosenDevice[1] == w.key
                              ? Colors.amber
                              : Colors.white,
                          child: GestureDetector(
                            onTap: () => setState(() {
                              chosenDevice[0] = data.key;
                              chosenDevice[1] = w.key;
                            }),
                            child: SizedBox(
                                height: 60,
                                child: Center(
                                    child: SmallText(text: w.value.name))),
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
                      ElectronicModel? newWeapon;
                      if (chosenDevice[0] != '' && chosenDevice[1] != '') {
                        newWeapon =
                            devicesList[chosenDevice[0]]![chosenDevice[1]];
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
