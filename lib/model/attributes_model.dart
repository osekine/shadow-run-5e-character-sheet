class AttributeModel
{
  final String name;
  int value;

  AttributeModel({required this.name, required this.value});

  @override
  String toString() {
    return name.toUpperCase();
  }
}

class Attributes
{
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
}

