import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/common/model/character_model.dart';
import 'package:shadowrun_5e_character_sheet/common/view/roll_dice.dart';

import '../model/skill_model.dart';
import '../../../common/view/text_widgets.dart';
import '../../../common/view/chage_value_wiget.dart';

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
    final skillModel = widget.model;
    int attrib = test[skillModel.attribute]?.value ?? 0;
    final isKnown = skillModel.isDefault || skillModel.level > 0;
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
                  child: Container(
                    color: isKnown ? Colors.white : Colors.black,
                    child: SmallText(
                        text: translateMessage(skillModel.name),
                        color: isKnown ? Colors.black : Colors.white),
                  ),
                )),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                    color: Colors.white,
                    child: SmallText(
                        text: translateMessage(skillModel.attribute.name))),
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
                          [skillModel.level, attrib, skillModel.bonus]));
                    },
                    onDoubleTap: () async {
                      int? a = await showDialog(
                          context: context,
                          builder: (context) => ChangeValueWidget(
                              value: skillModel.level, title: skillModel.name));
                      if (a != null) {
                        skillModel.level = a;
                        setState(() {});
                      }
                    },
                    child: Container(
                        color: Colors.white,
                        child: SmallText(text: '${skillModel.level}+$attrib'))),
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
        color: const Color.fromARGB(255, 217, 217, 217),
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
