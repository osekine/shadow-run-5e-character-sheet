import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BigText extends StatelessWidget {
  final String _text;
  final Color _color;
  const BigText({super.key, required String text, Color color = Colors.black})
      : _text = text,
        _color = color;

  @override
  Widget build(BuildContext context) {
    return Text(
      _text.toUpperCase(),
      style: TextStyle(
        fontSize: 30,
        color: _color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class MediumText extends StatelessWidget {
  final String _text;
  final Color _color;
  const MediumText(
      {super.key, required String text, Color color = Colors.black})
      : _text = text,
        _color = color;

  @override
  Widget build(BuildContext context) {
    return Text(
      _text.toUpperCase(),
      style: TextStyle(fontSize: 20, color: _color),
    );
  }
}

class SmallText extends StatelessWidget {
  final String _text;
  final Color _color;
  const SmallText({super.key, required String text, Color color = Colors.black})
      : _text = text,
        _color = color;

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(fontSize: 14, color: _color),
    );
  }
}

String translateMessage(String message) {
  return Intl.message(
    message,
    name: message,
  );
}
