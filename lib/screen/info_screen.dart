import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/model/character_model.dart';
import 'package:shadowrun_5e_character_sheet/utility/text_widgets.dart';

import '../model/info.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {

  late TextEditingController _nameController;
  late InfoModel model;

  @override
  void initState() {
    model = CharacterModel.of(context)!.info;
    _nameController = TextEditingController(text: model.name);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SmallText(text: 'Name: '),
              TextField(controller: _nameController, onEditingComplete: ()=> model.name = _nameController.text,)
            ]
          )
        ],
      ),
      Container(
        child: Center(child: BigText(text: '\$ ${model.money}'),)
      )
    ],);
  }
}