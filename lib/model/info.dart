import 'dart:math';

import 'character_model.dart';

class TresholdModel {
  final CharacterModel model;
  late int physical;
  late int mental;
  late int social;
  late int astral;

  TresholdModel({required this.model})
  {
    var attrib = model.attributes;
    physical = ((attrib.strength.value*2 + attrib.body.value + attrib.reaction.value)/3).ceil();
    mental = ((attrib.logic.value*2 + attrib.willpower.value + attrib.intuition.value)/3).ceil();
    social = ((attrib.charisma.value*2 + attrib.willpower.value + (attrib.entity.value/100).floor())/3).ceil();
    astral = max(mental, social);
  }
}

class InitiativeModel {
  final CharacterModel model;
  late int physical;
  late int AR;
  late int coldSim;
  late int hotSim;
  late int astral;

  InitiativeModel({required this.model})
  {
    physical = model.attributes.reaction.value + model.attributes.intuition.value;
    astral = model.attributes.intuition.value * 2;
    AR = model.attributes.reaction.value + model.attributes.intuition.value;

    //TODO: add matrix rating of device
    coldSim = model.attributes.logic.value ;
    hotSim = model.attributes.logic.value ;
  }
}