import 'package:flutter/material.dart';

import '../model/skill_model.dart';
import '../utility/text_widgets.dart';
import 'chage_value_wiget.dart';

class SkillWidget extends StatefulWidget {
  final SkillModel model;
  const SkillWidget({super.key, required this.model});

  @override
  State<SkillWidget> createState() => _SkillWidgetState();
}

class _SkillWidgetState extends State<SkillWidget> {
  @override
  Widget build(BuildContext context) {
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
                    color: Colors.white,
                    child: SmallText(text: widget.model.name)),
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
                    onDoubleTap: () async {
                      int? a = await showDialog(
                          context: context,
                          builder: (context) => ChangeValueWidget(
                              value: widget.model.level,
                              title: widget.model.name));
                      if (a != null) {
                        widget.model.level = a;
                        print('${widget.model.name} - ${widget.model.level}');
                        setState(() {});
                      }
                    },
                    child: Container(
                        color: Colors.white,
                        child: SmallText(
                            text:
                                '${widget.model.level}+${widget.model.attribute.value}'))),
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
