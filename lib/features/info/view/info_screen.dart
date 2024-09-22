import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/common/model/character_model.dart';
import 'package:shadowrun_5e_character_sheet/common/widget/text_widgets.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  late final TextEditingController _nameController;
  late final TextEditingController _raceController;
  late final TextEditingController _moneyController;

  @override
  void initState() {
    _nameController = TextEditingController();
    _raceController = TextEditingController();
    _moneyController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _raceController.dispose();
    _moneyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final model = CharacterProvider.of(context).info;
    _nameController.text = model.name ?? ' ';
    _raceController.text = model.race ?? ' ';
    _moneyController.text = '${model.money ?? ' '}';
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
                      const SmallText(text: 'Name: '),
                      Expanded(
                          child: TextField(
                        controller: _nameController,
                        onChanged: (val) {
                          model.name = _nameController.text;
                        },
                        onEditingComplete: () {
                          model.name = _nameController.text;
                          FocusScope.of(context).unfocus();
                        },
                      )),
                      const SmallText(text: 'Race: '),
                      Expanded(
                          child: TextField(
                        controller: _raceController,
                        onChanged: (val) {
                          model.race = _raceController.text;
                        },
                        onEditingComplete: () {
                          model.race = _raceController.text;
                          FocusScope.of(context).unfocus();
                        },
                      ))
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const BigText(text: '\$ '),
                    Expanded(
                      child: TextField(
                        controller: _moneyController,
                        keyboardType: TextInputType.number,
                        onChanged: (val) {
                          if (int.tryParse(_moneyController
                                  .text[_moneyController.text.length - 1]) ==
                              null) {
                            _moneyController.text = _moneyController.text
                                .substring(0, _moneyController.text.length - 1);
                          }
                          model.money = int.parse(_moneyController.text.isEmpty
                              ? '0'
                              : _moneyController.text);
                        },
                        onEditingComplete: () {
                          model.money = int.parse(_moneyController.text.isEmpty
                              ? '0'
                              : _moneyController.text);
                          FocusScope.of(context).unfocus();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
