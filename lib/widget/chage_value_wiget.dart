import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utility/text_widgets.dart';

class ChangeValueWidget extends StatefulWidget {
  final int value;
  final String title;
  const ChangeValueWidget(
      {super.key, required this.value, required this.title});

  @override
  State<ChangeValueWidget> createState() => _ChangeValueWidgetState();
}

class _ChangeValueWidgetState extends State<ChangeValueWidget> {
  late int value;

  @override
  void initState() {
    value = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(children: [
              MediumText(text: widget.title),
              GestureDetector(child: BigText(text: value.toString()), onTap: () {Navigator.of(context).pop(value);} ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        value++;
                        setState(() {});
                      },
                      child: BigText(
                        text: '+',
                      )),
                  ElevatedButton(
                      onPressed: () {
                        value--;
                        setState(() {});
                      },
                      child: BigText(
                        text: '+',
                      ))
                ],
              )
            ]),
          )),
    );
  }
}
