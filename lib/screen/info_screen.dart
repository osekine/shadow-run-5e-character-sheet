import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
  late TextEditingController _raceController;
  

  @override
  void initState() {
    _nameController = TextEditingController();
    _raceController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _raceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final model = CharacterProvider.of(context).info;
    _nameController.text = model.name ?? ' ';
    _raceController.text = model.race ?? ' ';
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SmallText(text: 'Name: '),
                      Expanded(
                          child: TextField(
                        controller: _nameController,
                        onChanged: (val){
                          model.name = _nameController.text;

                        },
                        onEditingComplete: () {
                          model.name = _nameController.text;
                          FocusScope.of(context).unfocus();
                        },
                      )),
                      SmallText(text: 'Race: '),
                      Expanded(
                          child: TextField(
                        controller: _raceController,
                        onChanged: (val){
                          model.race = _raceController.text;

                        },
                        onEditingComplete: () {
                          model.race = _raceController.text;
                          FocusScope.of(context).unfocus();
                        },
                      ))
                    ]),
              ),
        Container(
            child: Center(
          child: BigText(text: '\$ ${model.money}'),
        ))
            ],
          ),
        ),
      ],
    );
  }
}
