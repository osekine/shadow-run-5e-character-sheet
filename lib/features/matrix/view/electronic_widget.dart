import 'package:flutter/material.dart';

import '../model/electronic_model.dart';
import '../../../common/view/text_widgets.dart';

class ElectronicWidget extends StatelessWidget {
  final ElectronicModel model;
  const ElectronicWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final attribs = model.attributes;
    return LayoutBuilder(builder: (context, constraints) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 5.0),
        child: Container(
          color: Colors.grey,
          child: IntrinsicHeight(
            child: SizedBox(
              width: constraints.maxWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // direction: Axis.horizontal,
                children: [
                  dataCell(title: 'Name', data: model.name, flex: 6),
                  dataCell(
                      title: 'D',
                      data: attribs?.dataProc.value.toString() ?? '-',
                      flex: 1),
                  dataCell(
                      title: 'F',
                      data: attribs?.firewall.value.toString() ?? '-',
                      flex: 1),
                  dataCell(
                      title: 'A',
                      data: attribs?.attack.value.toString() ?? '-',
                      flex: 1),
                  dataCell(
                      title: 'S',
                      data: attribs?.sleaze.value.toString() ?? '-',
                      flex: 1),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
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
