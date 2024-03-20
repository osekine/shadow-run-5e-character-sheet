import 'package:flutter/material.dart';

import '../utility/text_widgets.dart';

class AttributeWidget extends StatelessWidget {
  final int value;
  final String name;
  final Color color;
  const AttributeWidget(
      {super.key,
      required this.value,
      required this.name,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: IntrinsicHeight(
          child: Card(
            color: Color.fromARGB(169, 217, 217, 217),
            elevation: 0,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(5),
                      child: SizedBox(
                          width: 85,
                          height: 85,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Card(
                                color: Color.fromARGB(255, 255, 250, 250),
                                child: Center(
                                    child: BigText(
                                        text: name == 'Ent'
                                            ? '${value / 100}${value % 100}'
                                            : '$value',
                                        color: color))),
                          ))),
                  MediumText(
                    text: name,
                    color: color,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
