import 'package:flutter/material.dart';

import 'text_widgets.dart';

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
    return Center(
      child: Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              MediumText(text: widget.title),
              GestureDetector(
                  child: BigText(text: value.toString()),
                  onTap: () {
                    Navigator.of(context).pop(value);
                  }),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        value--;
                        setState(() {});
                      },
                      child: const BigText(
                        text: '-',
                      )),
                  ElevatedButton(
                      onPressed: () {
                        value++;
                        setState(() {});
                      },
                      child: const BigText(
                        text: '+',
                      ))
                ],
              )
            ]),
          )),
    );
  }
}
