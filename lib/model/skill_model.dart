import 'package:shadowrun_5e_character_sheet/model/character_model.dart';

import 'attributes_model.dart';

class SkillModel {
  final String name;
  final AttributeModel attribute;
  int level = 0;
  int bonus = 0;
  bool isDefault = true;

  SkillModel(
      {required this.name,
      required this.attribute,
      this.level = 0,
      this.bonus = 0,
      this.isDefault = true});
}

class SkillGroupModel {
  final String name;
  List<SkillModel> skills = [];
  bool isBroke = false;

  SkillGroupModel(
      {required this.name, required this.skills, this.isBroke = false});
}

class SkillTypeModel {
  final String name;
  final List<SkillGroupModel> skillGroups;
  final List<SkillModel> freeSkills;

  SkillTypeModel(
      {required this.name,
      required this.skillGroups,
      required this.freeSkills});
}

class Skills {
  final CharacterModel model;
  List<SkillTypeModel> skillTypes = [];

  SkillTypeModel operator[](int i)
  {
    return skillTypes[i];
  }
  Skills({required this.model}) {
    skillTypes = [
      //БОЕВЫЕ НАВЫКИ+
      SkillTypeModel(name: 'Боевые', skillGroups: [
        SkillGroupModel(name: 'Ближний', skills: [
          SkillModel(name: 'Безоружный', attribute: model.attributes.agility),
          SkillModel(name: 'Клинки', attribute: model.attributes.agility),
          SkillModel(name: 'Дубинки', attribute: model.attributes.agility),
        ]),
        SkillGroupModel(name: 'Огнестрел', skills: [
          SkillModel(name: 'Автоматы', attribute: model.attributes.agility),
          SkillModel(name: 'Пистолеты', attribute: model.attributes.agility),
          SkillModel(
              name: 'Длинносвольное', attribute: model.attributes.agility),
        ]),
      ], freeSkills: [
        SkillModel(name: 'Артиллерия', attribute: model.attributes.agility),
        SkillModel(name: 'Тяжелое оружие', attribute: model.attributes.agility),
        SkillModel(name: 'Метание', attribute: model.attributes.agility),
        SkillModel(name: 'Луки', attribute: model.attributes.agility),
      ]),

      //ФИЗИЧЕСКИЕ НАВЫКИ+
      SkillTypeModel(name: 'Физические', skillGroups: [
        SkillGroupModel(name: 'Атлетика', skills: [
          SkillModel(name: 'Бег', attribute: model.attributes.strength),
          SkillModel(name: 'Гимнастика', attribute: model.attributes.agility),
          SkillModel(name: 'Плавание', attribute: model.attributes.strength),
        ]),
        SkillGroupModel(name: 'Природа', skills: [
          SkillModel(name: 'Навигация', attribute: model.attributes.intuition),
          SkillModel(name: 'Выживание', attribute: model.attributes.willpower),
          SkillModel(
              name: 'Выслеживание', attribute: model.attributes.intuition),
        ]),
      ], freeSkills: [
        SkillModel(name: 'Побег', attribute: model.attributes.agility),
        SkillModel(name: 'Свободное падение', attribute: model.attributes.body),
        SkillModel(
            name: 'Уход зза животными', attribute: model.attributes.charisma),
        SkillModel(
            name: 'Проницательность', attribute: model.attributes.intuition),
        SkillModel(name: 'Ныряние', attribute: model.attributes.body),
      ]),

      //СОЦИАЛЬНЫЕ НАВЫКИ+
      SkillTypeModel(name: 'Социальные', skillGroups: [
        SkillGroupModel(name: 'Притворство', skills: [
          SkillModel(name: 'Обман', attribute: model.attributes.charisma),
          SkillModel(name: 'Имитация', attribute: model.attributes.charisma),
          SkillModel(name: 'Выступление', attribute: model.attributes.charisma),
        ]),
        SkillGroupModel(name: 'Влияние', skills: [
          SkillModel(name: 'Этикет', attribute: model.attributes.charisma),
          SkillModel(name: 'Переговоры', attribute: model.attributes.charisma),
          SkillModel(name: 'Лидерство', attribute: model.attributes.charisma),
        ]),
      ], freeSkills: [
        SkillModel(name: 'Преподавание', attribute: model.attributes.charisma),
        SkillModel(name: 'Запугивание', attribute: model.attributes.charisma),
      ]),

      //МАТРИЧНЫЕ НАВЫКИ+
      SkillTypeModel(name: 'Матричные', skillGroups: [
        SkillGroupModel(name: 'Взлом', skills: [
          SkillModel(name: 'Хакинг', attribute: model.attributes.logic),
          SkillModel(name: 'Кибербой', attribute: model.attributes.logic),
          SkillModel(
              name: 'Связь',
              attribute: model.attributes.logic,
              isDefault: false),
        ]),
        SkillGroupModel(name: 'Электроника', skills: [
          SkillModel(name: 'Компьютеры', attribute: model.attributes.logic),
          SkillModel(
              name: 'Железо',
              attribute: model.attributes.logic,
              isDefault: false),
          SkillModel(
              name: 'Софт',
              attribute: model.attributes.logic,
              isDefault: false),
        ]),
      ], freeSkills: []),

      //ИНЖЕНЕРНЫЕ НАВЫКИ+
      SkillTypeModel(name: 'Инженерные', skillGroups: [
        SkillGroupModel(name: 'Биотех', skills: [
          SkillModel(
              name: 'Кибертех',
              attribute: model.attributes.logic,
              isDefault: false),
          SkillModel(
              name: 'Медицина',
              attribute: model.attributes.logic,
              isDefault: false),
          SkillModel(name: 'Первая помощь', attribute: model.attributes.logic),
        ]),
        SkillGroupModel(name: 'Инженерия', skills: [
          SkillModel(
              name: 'Аэро Мех',
              attribute: model.attributes.logic,
              isDefault: false),
          SkillModel(
              name: 'Морск Мех',
              attribute: model.attributes.logic,
              isDefault: false),
          SkillModel(
              name: 'Пром Мех',
              attribute: model.attributes.logic,
              isDefault: false),
          SkillModel(
              name: 'Авто Мех',
              attribute: model.attributes.logic,
              isDefault: false),
        ]),
      ], freeSkills: [
        SkillModel(
            name: 'Химия', attribute: model.attributes.logic, isDefault: false),
        SkillModel(name: 'Подделка', attribute: model.attributes.logic),
        SkillModel(name: 'Оружейник', attribute: model.attributes.logic),
        SkillModel(
            name: 'Ремесло',
            attribute: model.attributes.intuition,
            isDefault: false),
        SkillModel(
            name: 'Биотехнология',
            attribute: model.attributes.logic,
            isDefault: false),
      ]),

      //СКРЫТНОСТЬ+
      SkillTypeModel(name: 'Скрытность', skillGroups: [
        SkillGroupModel(name: 'Незаметность', skills: [
          SkillModel(name: 'Маскировка', attribute: model.attributes.intuition),
          SkillModel(name: 'Скрытность', attribute: model.attributes.agility),
          SkillModel(
              name: 'Ловкость рук',
              attribute: model.attributes.agility,
              isDefault: false),
        ]),
      ], freeSkills: [
        SkillModel(
            name: 'Взлом замков',
            attribute: model.attributes.agility,
            isDefault: false),
      ]),

      //ВОЖДЕНИЕ+
      SkillTypeModel(name: 'Вождение', skillGroups: [], freeSkills: [
        SkillModel(name: 'Автомобили', attribute: model.attributes.reaction),
        SkillModel(name: 'Корабли', attribute: model.attributes.reaction),
        SkillModel(
            name: 'Шагатели',
            attribute: model.attributes.reaction,
            isDefault: false),
        SkillModel(
            name: 'Самолеты',
            attribute: model.attributes.reaction,
            isDefault: false),
        SkillModel(
            name: 'Космос',
            attribute: model.attributes.reaction,
            isDefault: false),
      ]),

      //МАГИЧЕСКИЕ НАВЫКИ+
      SkillTypeModel(name: 'Магические', skillGroups: [
        SkillGroupModel(name: 'Зачарование', skills: [
          SkillModel(name: 'Алхимия', attribute: model.attributes.magic),
          SkillModel(name: 'Артефакты', attribute: model.attributes.magic),
          SkillModel(name: 'Освобождение', attribute: model.attributes.magic),
        ]),
        SkillGroupModel(name: 'Призыв', skills: [
          SkillModel(name: 'Связывание', attribute: model.attributes.magic),
          SkillModel(name: 'Призыв', attribute: model.attributes.magic),
          SkillModel(name: 'Изгнание', attribute: model.attributes.magic),
        ]),
        SkillGroupModel(name: 'Колдовство', skills: [
          SkillModel(name: 'Чародейство', attribute: model.attributes.magic),
          SkillModel(name: 'Контрчародейсво', attribute: model.attributes.magic),
          SkillModel(name: 'Ритуалы', attribute: model.attributes.magic),
        ]),
      ], freeSkills: [
        SkillModel(name: 'Астральный бой', attribute: model.attributes.willpower, isDefault: false),
        SkillModel(name: 'Чувствование', attribute: model.attributes.intuition, isDefault: false),
        SkillModel(name: 'Аркана', attribute: model.attributes.logic, isDefault: false),
      ]),

      //РЕЗОНАНС
      SkillTypeModel(name: 'Резонанс', skillGroups: [
        SkillGroupModel(name: 'Поручение', skills: [
          SkillModel(name: 'Компиляция', attribute: model.attributes.magic),
          SkillModel(name: 'Декомпиляция', attribute: model.attributes.magic),
          SkillModel(name: 'Регистрация', attribute: model.attributes.magic),
        ]),
        
      ], freeSkills: [
        
      ]),
    ];
  }
}
