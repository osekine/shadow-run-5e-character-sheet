// ignore_for_file: non_constant_identifier_names

import 'package:shadowrun_5e_character_sheet/features/info/model/attribute_types.dart';

import '../../../common/model/character_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'info.g.dart';

@JsonSerializable()
class InfoModel {
  String? name;
  String? race;
  String? gender;
  int? weigth;
  int? height;
  int? money;

  InfoModel(
      {this.name,
      this.race,
      this.gender,
      this.weigth,
      this.height,
      this.money});

  factory InfoModel.fromJson(Map<String, dynamic> json) =>
      _$InfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$InfoModelToJson(this);
}

class InitiativeModel {
  final CharacterModel model;
  late int physical;
  late int AR;
  late int coldSim;
  late int hotSim;
  late int astral;

  InitiativeModel({required this.model}) {
    physical = model.attributes[CharacterAttributes.reaction]!.value +
        model.attributes[CharacterAttributes.intuition]!.value;
    astral = model.attributes[CharacterAttributes.intuition]!.value * 2;
    AR = model.attributes[CharacterAttributes.reaction]!.value +
        model.attributes[CharacterAttributes.intuition]!.value;

    //TODO: add matrix rating of device
    coldSim = model.attributes[CharacterAttributes.logic]!.value;
    hotSim = model.attributes[CharacterAttributes.logic]!.value;
  }
}
