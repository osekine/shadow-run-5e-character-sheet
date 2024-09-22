import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/features/info/model/attributes_model.dart';

import '../../../common/widget/text_widgets.dart';
import '../../../common/widget/chage_value_wiget.dart';

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
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        //TODO: maybe IntrinsicHeight is none necessary
        child: IntrinsicHeight(
          child: Card(
            color: const Color.fromARGB(169, 217, 217, 217),
            elevation: 0,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                                        title: widget.model.toString())));
                                if (a != null) {
                                  widget.model.value = a;
                                  setState(
                                    () {},
                                  );
                                }
                              },
                              child: Card(
                                  color:
                                      const Color.fromARGB(255, 255, 250, 250),
                                  child: Center(
                                      child: BigText(
                                          text: widget.model.toString() == 'СУЩ'
                                              ? '${(widget.model.value / 100).floor()}.${widget.model.value % 100}'
                                              : '${widget.model.value}',
                                          color: widget.color))),
                            ),
                          ))),
                  MediumText(
                    text: widget.model.toString(),
                    color: widget.color,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
