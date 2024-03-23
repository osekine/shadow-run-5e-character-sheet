
import 'package:json_annotation/json_annotation.dart';

part 'attributes_model.g.dart';

@JsonSerializable()
class AttributeModel {
  final String name;
  int value;

  AttributeModel({required this.name, required this.value});

  factory AttributeModel.fromJson(Map<String, dynamic> json) => _$AttributeModelFromJson(json);

  Map<String, dynamic> toJson() => _$AttributeModelToJson(this);

  @override
  String toString() {
    return name.toUpperCase();
  }
}

@JsonSerializable()
class Attributes {
  final AttributeModel strength = AttributeModel(name: 'Сила', value: 1);
  final AttributeModel agility = AttributeModel(name: 'Лов', value: 2);
  final AttributeModel body = AttributeModel(name: 'Тело', value: 3);
  final AttributeModel reaction = AttributeModel(name: 'Реа', value: 4);
  final AttributeModel logic = AttributeModel(name: 'Лог', value: 5);
  final AttributeModel intuition = AttributeModel(name: 'Инт', value: 6);
  final AttributeModel willpower = AttributeModel(name: 'СВ', value: 1);
  final AttributeModel charisma = AttributeModel(name: 'Хар', value: 2);
  final AttributeModel magic = AttributeModel(name: 'Маг', value: 1);
  final AttributeModel edge = AttributeModel(name: 'Гр', value: 6);
  final AttributeModel entity = AttributeModel(name: 'Сущ', value: 600);

  Attributes({this.strength, this.agility, this.body, this.reaction, this.logic, this.intuition, this.willpower, this.charisma, this.magic, this.edge, this.entity});

  factory Attributes.fromJson(Map<String, dynamic> json) => _$AttributesFromJson(json);

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
      { required int rating,
        required int attack,
      required int sleaze,
      required int dataProc,
      required int firewall})
      : _rating = AttributeModel(name: "Рейтинг", value: rating), 
      _attack = AttributeModel(name: "Атака", value: attack),
        _sleaze = AttributeModel(name: "Слив", value: sleaze),
        _dataProc = AttributeModel(name: "Обрабтка", value: dataProc),
        _firewall = AttributeModel(name: "Фаервол", value: firewall);

  factory MatrixAttributes.fromJson(Map<String, dynamic> json) => _$MatrixAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$MatrixAttributesToJson(this);
}
