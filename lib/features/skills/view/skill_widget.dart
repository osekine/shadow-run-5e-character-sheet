import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/common/model/character_model.dart';
import 'package:shadowrun_5e_character_sheet/common/widget/roll_dice.dart';

import '../model/skill_model.dart';
import '../../../common/widget/text_widgets.dart';
import '../../../common/widget/chage_value_wiget.dart';

class SkillWidget extends StatefulWidget {
  final SkillModel model;
  const SkillWidget({super.key, required this.model});

  @override
  State<SkillWidget> createState() => _SkillWidgetState();
}

class _SkillWidgetState extends State<SkillWidget> {
  @override
  Widget build(BuildContext context) {
    final test = CharacterProvider.of(context).attributes;
    int attrib = 0;
    if (widget.model.attribute.name == 'Сила') attrib = test.strength.value;
    if (widget.model.attribute.name == 'Лов') attrib = test.agility.value;
    if (widget.model.attribute.name == 'Тело') attrib = test.body.value;
    if (widget.model.attribute.name == 'Реа') attrib = test.reaction.value;
    if (widget.model.attribute.name == 'Лог') attrib = test.logic.value;
    if (widget.model.attribute.name == 'Инт') attrib = test.intuition.value;
    if (widget.model.attribute.name == 'Воля') attrib = test.willpower.value;
    if (widget.model.attribute.name == 'Хар') attrib = test.charisma.value;
    if (widget.model.attribute.name == 'Маг') attrib = test.magic.value;

    return SizedBox(
      width: 270,
      child: Flex(
          direction: Axis.horizontal,
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: widget.model.isDefault || widget.model.level > 0
                    ? Container(
                        color: Colors.white,
                        child: SmallText(text: widget.model.name))
                    : Container(
                        color: Colors.black,
                        child: SmallText(
                            text: widget.model.name, color: Colors.white)),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                    color: Colors.white,
                    child: SmallText(text: widget.model.attribute.toString())),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).removeCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(RollDice.roll(
                          [widget.model.level, attrib, widget.model.bonus]));
                    },
                    onDoubleTap: () async {
                      int? a = await showDialog(
                          context: context,
                          builder: (context) => ChangeValueWidget(
                              value: widget.model.level,
                              title: widget.model.name));
                      if (a != null) {
                        widget.model.level = a;
                        setState(() {});
                      }
                    },
                    child: Container(
                        color: Colors.white,
                        child: SmallText(
                            text: '${widget.model.level}+${attrib}'))),
              ),
            ),
          ]),
    );
  }
}

class SkillGroupWidget extends StatelessWidget {
  final SkillGroupModel model;
  const SkillGroupWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                color: Colors.white,
                child: SizedBox(
                  width: 80,
                  child: Center(child: SmallText(text: model.name)),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (var skill in model.skills) SkillWidget(model: skill)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SkillTypeWidget extends StatelessWidget {
  final SkillTypeModel model;
  const SkillTypeWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Color.fromARGB(255, 217, 217, 217),
        child: Column(
          children: [
            Center(
              child: BigText(text: model.name),
            ),
            for (var skillGroup in model.skillGroups)
              SkillGroupWidget(model: skillGroup),
            for (var skill in model.freeSkills)
              Row(
                children: [
                  const SizedBox(width: 86),
                  SkillWidget(model: skill),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
