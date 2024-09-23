import 'package:shadowrun_5e_character_sheet/features/info/model/attribute_types.dart';

import '../../info/model/attributes_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'skill_model.g.dart';

@JsonSerializable()
class SkillModel {
  final String name;
  final CharacterAttributes attribute;
  int level = 0;
  int bonus = 0;
  bool isDefault = true;

  SkillModel(
      {required this.name,
      required this.attribute,
      this.level = 0,
      this.bonus = 0,
      this.isDefault = true});

  factory SkillModel.fromJson(Map<String, dynamic> json) =>
      _$SkillModelFromJson(json);

  Map<String, dynamic> toJson() => _$SkillModelToJson(this);
}

@JsonSerializable()
class SkillGroupModel {
  final String name;
  List<SkillModel> skills = [];
  bool isBroke = false;

  SkillGroupModel(
      {required this.name, required this.skills, this.isBroke = false});

  factory SkillGroupModel.fromJson(Map<String, dynamic> json) =>
      _$SkillGroupModelFromJson(json);

  Map<String, dynamic> toJson() => _$SkillGroupModelToJson(this);
}

@JsonSerializable()
class SkillTypeModel {
  final String name;
  final List<SkillGroupModel> skillGroups;
  final List<SkillModel> freeSkills;

  SkillTypeModel(
      {required this.name,
      required this.skillGroups,
      required this.freeSkills});

  factory SkillTypeModel.fromJson(Map<String, dynamic> json) =>
      _$SkillTypeModelFromJson(json);

  Map<String, dynamic> toJson() => _$SkillTypeModelToJson(this);
}

@JsonSerializable()
class Skills {
  final Map<CharacterAttributes, AttributeModel> model;
  List<SkillTypeModel> skillTypes = [];

  SkillTypeModel operator [](int i) {
    return skillTypes[i];
  }

  Skills({required this.model, required this.skillTypes});

  factory Skills.fromJson(Map<String, dynamic> json) => _$SkillsFromJson(json);

  Map<String, dynamic> toJson() => _$SkillsToJson(this);

  Skills.start({required this.model}) {
    skillTypes = [
      //БОЕВЫЕ НАВЫКИ+
      SkillTypeModel(name: 'Боевые', skillGroups: [
        SkillGroupModel(name: 'Ближний', skills: [
          SkillModel(
              name: 'Безоружный', attribute: CharacterAttributes.agility),
          SkillModel(name: 'Клинки', attribute: CharacterAttributes.agility),
          SkillModel(name: 'Дубинки', attribute: CharacterAttributes.agility),
        ]),
        SkillGroupModel(name: 'Огнестрел', skills: [
          SkillModel(name: 'Автоматы', attribute: CharacterAttributes.agility),
          SkillModel(name: 'Пистолеты', attribute: CharacterAttributes.agility),
          SkillModel(
              name: 'Длинносвольное', attribute: CharacterAttributes.agility),
        ]),
      ], freeSkills: [
        SkillModel(name: 'Артиллерия', attribute: CharacterAttributes.agility),
        SkillModel(
            name: 'Тяжелое оружие', attribute: CharacterAttributes.agility),
        SkillModel(name: 'Метание', attribute: CharacterAttributes.agility),
        SkillModel(name: 'Луки', attribute: CharacterAttributes.agility),
      ]),

      //ФИЗИЧЕСКИЕ НАВЫКИ+
      SkillTypeModel(name: 'Физические', skillGroups: [
        SkillGroupModel(name: 'Атлетика', skills: [
          SkillModel(name: 'Бег', attribute: CharacterAttributes.strength),
          SkillModel(
              name: 'Гимнастика', attribute: CharacterAttributes.agility),
          SkillModel(name: 'Плавание', attribute: CharacterAttributes.strength),
        ]),
        SkillGroupModel(name: 'Природа', skills: [
          SkillModel(
              name: 'Навигация', attribute: CharacterAttributes.intuition),
          SkillModel(
              name: 'Выживание', attribute: CharacterAttributes.willpower),
          SkillModel(
              name: 'Выслеживание', attribute: CharacterAttributes.intuition),
        ]),
      ], freeSkills: [
        SkillModel(name: 'Побег', attribute: CharacterAttributes.agility),
        SkillModel(
            name: 'Свободное падение', attribute: CharacterAttributes.body),
        SkillModel(
            name: 'Уход зза животными',
            attribute: CharacterAttributes.charisma),
        SkillModel(
            name: 'Проницательность', attribute: CharacterAttributes.intuition),
        SkillModel(name: 'Ныряние', attribute: CharacterAttributes.body),
      ]),

      //СОЦИАЛЬНЫЕ НАВЫКИ+
      SkillTypeModel(name: 'Социальные', skillGroups: [
        SkillGroupModel(name: 'Притворство', skills: [
          SkillModel(name: 'Обман', attribute: CharacterAttributes.charisma),
          SkillModel(name: 'Имитация', attribute: CharacterAttributes.charisma),
          SkillModel(
              name: 'Выступление', attribute: CharacterAttributes.charisma),
        ]),
        SkillGroupModel(name: 'Влияние', skills: [
          SkillModel(name: 'Этикет', attribute: CharacterAttributes.charisma),
          SkillModel(
              name: 'Переговоры', attribute: CharacterAttributes.charisma),
          SkillModel(
              name: 'Лидерство', attribute: CharacterAttributes.charisma),
        ]),
      ], freeSkills: [
        SkillModel(
            name: 'Преподавание', attribute: CharacterAttributes.charisma),
        SkillModel(
            name: 'Запугивание', attribute: CharacterAttributes.charisma),
      ]),

      //МАТРИЧНЫЕ НАВЫКИ+
      SkillTypeModel(name: 'Матричные', skillGroups: [
        SkillGroupModel(name: 'Взлом', skills: [
          SkillModel(name: 'Хакинг', attribute: CharacterAttributes.logic),
          SkillModel(name: 'Кибербой', attribute: CharacterAttributes.logic),
          SkillModel(
              name: 'Связь',
              attribute: CharacterAttributes.logic,
              isDefault: false),
        ]),
        SkillGroupModel(name: 'Электроника', skills: [
          SkillModel(name: 'Компьютеры', attribute: CharacterAttributes.logic),
          SkillModel(
              name: 'Железо',
              attribute: CharacterAttributes.logic,
              isDefault: false),
          SkillModel(
              name: 'Софт',
              attribute: CharacterAttributes.logic,
              isDefault: false),
        ]),
      ], freeSkills: []),

      //ИНЖЕНЕРНЫЕ НАВЫКИ+
      SkillTypeModel(name: 'Инженерные', skillGroups: [
        SkillGroupModel(name: 'Биотех', skills: [
          SkillModel(
              name: 'Кибертех',
              attribute: CharacterAttributes.logic,
              isDefault: false),
          SkillModel(
              name: 'Медицина',
              attribute: CharacterAttributes.logic,
              isDefault: false),
          SkillModel(
              name: 'Первая помощь', attribute: CharacterAttributes.logic),
        ]),
        SkillGroupModel(name: 'Инженерия', skills: [
          SkillModel(
              name: 'Аэро Мех',
              attribute: CharacterAttributes.logic,
              isDefault: false),
          SkillModel(
              name: 'Морск Мех',
              attribute: CharacterAttributes.logic,
              isDefault: false),
          SkillModel(
              name: 'Пром Мех',
              attribute: CharacterAttributes.logic,
              isDefault: false),
          SkillModel(
              name: 'Авто Мех',
              attribute: CharacterAttributes.logic,
              isDefault: false),
        ]),
      ], freeSkills: [
        SkillModel(
            name: 'Химия',
            attribute: CharacterAttributes.logic,
            isDefault: false),
        SkillModel(name: 'Подделка', attribute: CharacterAttributes.logic),
        SkillModel(name: 'Оружейник', attribute: CharacterAttributes.logic),
        SkillModel(
            name: 'Ремесло',
            attribute: CharacterAttributes.intuition,
            isDefault: false),
        SkillModel(
            name: 'Биотехнология',
            attribute: CharacterAttributes.logic,
            isDefault: false),
      ]),

      //СКРЫТНОСТЬ+
      SkillTypeModel(name: 'Скрытность', skillGroups: [
        SkillGroupModel(name: 'Незаметность', skills: [
          SkillModel(
              name: 'Маскировка', attribute: CharacterAttributes.intuition),
          SkillModel(
              name: 'Скрытность', attribute: CharacterAttributes.agility),
          SkillModel(
              name: 'Ловкость рук',
              attribute: CharacterAttributes.agility,
              isDefault: false),
        ]),
      ], freeSkills: [
        SkillModel(
            name: 'Взлом замков',
            attribute: CharacterAttributes.agility,
            isDefault: false),
      ]),

      //ВОЖДЕНИЕ+
      SkillTypeModel(name: 'Вождение', skillGroups: [], freeSkills: [
        SkillModel(name: 'Автомобили', attribute: CharacterAttributes.reaction),
        SkillModel(name: 'Корабли', attribute: CharacterAttributes.reaction),
        SkillModel(
            name: 'Шагатели',
            attribute: CharacterAttributes.reaction,
            isDefault: false),
        SkillModel(
            name: 'Самолеты',
            attribute: CharacterAttributes.reaction,
            isDefault: false),
        SkillModel(
            name: 'Космос',
            attribute: CharacterAttributes.reaction,
            isDefault: false),
      ]),

      //МАГИЧЕСКИЕ НАВЫКИ+
      SkillTypeModel(name: 'Магические', skillGroups: [
        SkillGroupModel(name: 'Зачарование', skills: [
          SkillModel(name: 'Алхимия', attribute: CharacterAttributes.magic),
          SkillModel(name: 'Артефакты', attribute: CharacterAttributes.magic),
          SkillModel(
              name: 'Освобождение', attribute: CharacterAttributes.magic),
        ]),
        SkillGroupModel(name: 'Призыв', skills: [
          SkillModel(name: 'Связывание', attribute: CharacterAttributes.magic),
          SkillModel(name: 'Призыв', attribute: CharacterAttributes.magic),
          SkillModel(name: 'Изгнание', attribute: CharacterAttributes.magic),
        ]),
        SkillGroupModel(name: 'Колдовство', skills: [
          SkillModel(name: 'Чародейство', attribute: CharacterAttributes.magic),
          SkillModel(
              name: 'Контрчародейсво', attribute: CharacterAttributes.magic),
          SkillModel(name: 'Ритуалы', attribute: CharacterAttributes.magic),
        ]),
      ], freeSkills: [
        SkillModel(
            name: 'Астральный бой',
            attribute: CharacterAttributes.willpower,
            isDefault: false),
        SkillModel(
            name: 'Чувствование',
            attribute: CharacterAttributes.intuition,
            isDefault: false),
        SkillModel(
            name: 'Аркана',
            attribute: CharacterAttributes.logic,
            isDefault: false),
      ]),

      //РЕЗОНАНС
      SkillTypeModel(name: 'Резонанс', skillGroups: [
        SkillGroupModel(name: 'Поручение', skills: [
          SkillModel(name: 'Компиляция', attribute: CharacterAttributes.magic),
          SkillModel(
              name: 'Декомпиляция', attribute: CharacterAttributes.magic),
          SkillModel(name: 'Регистрация', attribute: CharacterAttributes.magic),
        ]),
      ], freeSkills: []),
    ];
  }
}
