import 'dart:math';

import 'package:json_annotation/json_annotation.dart';
import 'package:shadowrun_5e_character_sheet/features/info/model/attribute_types.dart';

import '../../../common/model/character_model.dart';

part 'attributes_model.g.dart';

@JsonSerializable()
class AttributeModel {
  final String name;
  int value;
  int max;
  int min;

  AttributeModel(
      {required this.name, required this.value, this.min = 1, this.max = 6});

  factory AttributeModel.fromJson(Map<String, dynamic> json) =>
      _$AttributeModelFromJson(json);

  Map<String, dynamic> toJson() => _$AttributeModelToJson(this);

  @override
  String toString() {
    return name.toUpperCase();
  }
}

//TODO: change to enum, store in map
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
  final Map<CharacterAttributes, AttributeModel> attributes;
  late int physical;
  late int mental;
  late int social;
  late int astral;

  TresholdModel({required this.attributes}) {
    physical = ((attributes[CharacterAttributes.strength]!.value * 2 +
                attributes[CharacterAttributes.body]!.value +
                attributes[CharacterAttributes.reaction]!.value) /
            3)
        .ceil();
    mental = ((attributes[CharacterAttributes.logic]!.value * 2 +
                attributes[CharacterAttributes.willpower]!.value +
                attributes[CharacterAttributes.intuition]!.value) /
            3)
        .ceil();
    social = ((attributes[CharacterAttributes.charisma]!.value * 2 +
                attributes[CharacterAttributes.willpower]!.value +
                (attributes[CharacterAttributes.entity]!.value / 100).floor()) /
            3)
        .ceil();
    astral = max(mental, social);
  }
}
