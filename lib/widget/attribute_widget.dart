import 'package:flutter/material.dart';

class AttributeWidget extends StatelessWidget {
  final int value;
  final String name;
  const AttributeWidget({super.key, required this.value, required this.name});

  @override
  Widget build(BuildContext context) {
    return  IntrinsicHeight(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Card(
          color: Color(0xD9D9D9),
          elevation: 4.0,
          child: SizedBox(
            height: 110,
            width: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: const EdgeInsets.all(5), child: ClipRRect(borderRadius: BorderRadius.circular(8), child: Card(color: Color(0xFFFAFA), child: Text('$value'),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(name),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}