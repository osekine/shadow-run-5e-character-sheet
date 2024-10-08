import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shadowrun_5e_character_sheet/features/info/model/attribute_types.dart';
import 'package:shadowrun_5e_character_sheet/features/info/model/attributes_model.dart';

import '../../../common/view/text_widgets.dart';
import '../../../common/view/chage_value_wiget.dart';

class AttributeWidget extends StatefulWidget {
  final AttributeModel model;
  final Color color;
  const AttributeWidget({super.key, required this.model, required this.color});

  @override
  State<AttributeWidget> createState() => _AttributeWidgetState();
}

class _AttributeWidgetState extends State<AttributeWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(169, 217, 217, 217),
      elevation: 0,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Padding(
            padding: const EdgeInsets.all(5),
            child: SizedBox(
                width: 85,
                height: 75,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: GestureDetector(
                    onDoubleTap: () async {
                      int? a = await showDialog(
                        context: context,
                        builder: ((context) => ChangeValueWidget(
                              value: widget.model.value,
                              title: translateMessage(widget.model.name),
                            )),
                      );
                      if (a != null) {
                        widget.model.value = a;
                        setState(
                          () {},
                        );
                      }
                    },
                    child: Card(
                        color: const Color.fromARGB(255, 255, 250, 250),
                        child: Center(
                            child: BigText(
                                text: widget.model.name ==
                                        CharacterAttributes.entity.name
                                    ? '${(widget.model.value / 100).floor()}.${widget.model.value % 100}'
                                    : '${widget.model.value}',
                                color: widget.color))),
                  ),
                ))),
        MediumText(
          text: translateMessage(widget.model.name),
          color: widget.color,
        ),
      ]),
    );
  }
}
