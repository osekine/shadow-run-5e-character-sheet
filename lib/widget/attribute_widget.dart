import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/model/attributes_model.dart';
import 'package:shadowrun_5e_character_sheet/model/character_model.dart';

import '../utility/text_widgets.dart';
import 'chage_value_wiget.dart';

class AttributeWidget extends StatefulWidget {
  final AttributeModel model;
  final Color color;
  const AttributeWidget(
      {super.key,
      required this.model,
      required this.color});

  @override
  State<AttributeWidget> createState() => _AttributeWidgetState();
}

class _AttributeWidgetState extends State<AttributeWidget> {
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
                            child: GestureDetector(
                              onDoubleTap: ()async{
                                int? a= await showDialog(context: context, builder: ((context) => ChangeValueWidget(value: widget.model.value, title: widget.model.toString())));
                                if(a!=null){
                                  widget.model.value = a;
                                  setState(() {
                                    
                                  },);
                                }
                              },
                              child: Card(
                                  color: Color.fromARGB(255, 255, 250, 250),
                                  child: Center(
                                      child: BigText(
                                          text: widget.model.toString() == 'СУЩ'
                                              ? '${widget.model.value / 100}${widget.model.value % 100}'
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
