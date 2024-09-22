import 'dart:math';

import 'package:json_annotation/json_annotation.dart';

import '../../../common/model/character_model.dart';

part 'attributes_model.g.dart';

@JsonSerializable()
class AttributeModel {
  final String name;
  int value;

  AttributeModel({required this.name, required this.value});

  factory AttributeModel.fromJson(Map<String, dynamic> json) =>
      _$AttributeModelFromJson(json);

  Map<String, dynamic> toJson() => _$AttributeModelToJson(this);

  @override
  String toString() {
    return name.toUpperCase();
  }
}

@JsonSerializable()
class Attributes {
  AttributeModel strength;
  AttributeModel agility;
  AttributeModel body;
  AttributeModel reaction;
  AttributeModel logic;
  AttributeModel intuition;
  AttributeModel willpower;
  AttributeModel charisma;
  AttributeModel magic;
  AttributeModel edge;
  AttributeModel entity;

  Attributes(
      {required this.strength,
      required this.agility,
      required this.body,
      required this.reaction,
      required this.logic,
      required this.intuition,
      required this.willpower,
      required this.charisma,
      required this.magic,
      required this.edge,
      required this.entity});

  Attributes.start()
      : strength = AttributeModel(name: "Сила", value: 1),
        agility = AttributeModel(name: "Лов", value: 1),
        body = AttributeModel(name: "Тело", value: 1),
        reaction = AttributeModel(name: "Реа", value: 1),
        logic = AttributeModel(name: "Лог", value: 1),
        intuition = AttributeModel(name: "Инт", value: 1),
        willpower = AttributeModel(name: "Воля", value: 1),
        charisma = AttributeModel(name: "Хар", value: 1),
        magic = AttributeModel(name: "Маг", value: 0),
        edge = AttributeModel(name: "Грань", value: 6),
        entity = AttributeModel(name: "Сущ", value: 600);

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);

  Map<String, dynamic> toJson() => _$AttributesToJson(this);
}

@JsonSerializable()
class MatrixAttributes {
  final AttributeModel _rating;
  final AttributeModel _attack;
  final AttributeModel _sleaze;
  final AttributeModel _dataProc;
  final AttributeModel _firewall;
  AttributeModel get attack => _attack;
  AttributeModel get rating => _rating;
  AttributeModel get sleaze => _sleaze;
  AttributeModel get dataProc => _dataProc;
  AttributeModel get firewall => _firewall;

  MatrixAttributes(
      {required int rating,
      required int attack,
      required int sleaze,
      required int dataProc,
      required int firewall})
      : _rating = AttributeModel(name: "Рейтинг", value: rating),
        _attack = AttributeModel(name: "Атака", value: attack),
        _sleaze = AttributeModel(name: "Слив", value: sleaze),
        _dataProc = AttributeModel(name: "Обрабтка", value: dataProc),
        _firewall = AttributeModel(name: "Фаервол", value: firewall);

  factory MatrixAttributes.fromJson(Map<String, dynamic> json) =>
      _$MatrixAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$MatrixAttributesToJson(this);
}

class TresholdModel {
  final CharacterModel model;
  late int physical;
  late int mental;
  late int social;
  late int astral;

  TresholdModel({required this.model}) {
    var attrib = model.attributes;
    physical = ((attrib.strength.value * 2 +
                attrib.body.value +
                attrib.reaction.value) /
            3)
        .ceil();
    mental = ((attrib.logic.value * 2 +
                attrib.willpower.value +
                attrib.intuition.value) /
            3)
        .ceil();
    social = ((attrib.charisma.value * 2 +
                attrib.willpower.value +
                (attrib.entity.value / 100).floor()) /
            3)
        .ceil();
    astral = max(mental, social);
  }
}
