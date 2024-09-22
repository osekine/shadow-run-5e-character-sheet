import 'dart:math';

import 'package:flutter/material.dart';

class RollDice {
  static SnackBar roll(List<int> dicepool) {
    int amount = 0;
    for (var i in dicepool) {
      amount += i;
    }

    String result = '';
    for (int i = 0; i < amount - 1; ++i) {
      result += '${Random().nextInt(6) + 1}, ';
    }
    result += '${Random().nextInt(6) + 1}';

    return SnackBar(content: Text(result));
  }
}
