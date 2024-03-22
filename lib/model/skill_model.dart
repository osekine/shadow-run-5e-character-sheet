
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
  final Attributes model;
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
          SkillModel(name: 'Безоружный', attribute: model.agility),
          SkillModel(name: 'Клинки', attribute: model.agility),
          SkillModel(name: 'Дубинки', attribute: model.agility),
        ]),
        SkillGroupModel(name: 'Огнестрел', skills: [
          SkillModel(name: 'Автоматы', attribute: model.agility),
          SkillModel(name: 'Пистолеты', attribute: model.agility),
          SkillModel(
              name: 'Длинносвольное', attribute: model.agility),
        ]),
      ], freeSkills: [
        SkillModel(name: 'Артиллерия', attribute: model.agility),
        SkillModel(name: 'Тяжелое оружие', attribute: model.agility),
        SkillModel(name: 'Метание', attribute: model.agility),
        SkillModel(name: 'Луки', attribute: model.agility),
      ]),

      //ФИЗИЧЕСКИЕ НАВЫКИ+
      SkillTypeModel(name: 'Физические', skillGroups: [
        SkillGroupModel(name: 'Атлетика', skills: [
          SkillModel(name: 'Бег', attribute: model.strength),
          SkillModel(name: 'Гимнастика', attribute: model.agility),
          SkillModel(name: 'Плавание', attribute: model.strength),
        ]),
        SkillGroupModel(name: 'Природа', skills: [
          SkillModel(name: 'Навигация', attribute: model.intuition),
          SkillModel(name: 'Выживание', attribute: model.willpower),
          SkillModel(
              name: 'Выслеживание', attribute: model.intuition),
        ]),
      ], freeSkills: [
        SkillModel(name: 'Побег', attribute: model.agility),
        SkillModel(name: 'Свободное падение', attribute: model.body),
        SkillModel(
            name: 'Уход зза животными', attribute: model.charisma),
        SkillModel(
            name: 'Проницательность', attribute: model.intuition),
        SkillModel(name: 'Ныряние', attribute: model.body),
      ]),

      //СОЦИАЛЬНЫЕ НАВЫКИ+
      SkillTypeModel(name: 'Социальные', skillGroups: [
        SkillGroupModel(name: 'Притворство', skills: [
          SkillModel(name: 'Обман', attribute: model.charisma),
          SkillModel(name: 'Имитация', attribute: model.charisma),
          SkillModel(name: 'Выступление', attribute: model.charisma),
        ]),
        SkillGroupModel(name: 'Влияние', skills: [
          SkillModel(name: 'Этикет', attribute: model.charisma),
          SkillModel(name: 'Переговоры', attribute: model.charisma),
          SkillModel(name: 'Лидерство', attribute: model.charisma),
        ]),
      ], freeSkills: [
        SkillModel(name: 'Преподавание', attribute: model.charisma),
        SkillModel(name: 'Запугивание', attribute: model.charisma),
      ]),

      //МАТРИЧНЫЕ НАВЫКИ+
      SkillTypeModel(name: 'Матричные', skillGroups: [
        SkillGroupModel(name: 'Взлом', skills: [
          SkillModel(name: 'Хакинг', attribute: model.logic),
          SkillModel(name: 'Кибербой', attribute: model.logic),
          SkillModel(
              name: 'Связь',
              attribute: model.logic,
              isDefault: false),
        ]),
        SkillGroupModel(name: 'Электроника', skills: [
          SkillModel(name: 'Компьютеры', attribute: model.logic),
          SkillModel(
              name: 'Железо',
              attribute: model.logic,
              isDefault: false),
          SkillModel(
              name: 'Софт',
              attribute: model.logic,
              isDefault: false),
        ]),
      ], freeSkills: []),

      //ИНЖЕНЕРНЫЕ НАВЫКИ+
      SkillTypeModel(name: 'Инженерные', skillGroups: [
        SkillGroupModel(name: 'Биотех', skills: [
          SkillModel(
              name: 'Кибертех',
              attribute: model.logic,
              isDefault: false),
          SkillModel(
              name: 'Медицина',
              attribute: model.logic,
              isDefault: false),
          SkillModel(name: 'Первая помощь', attribute: model.logic),
        ]),
        SkillGroupModel(name: 'Инженерия', skills: [
          SkillModel(
              name: 'Аэро Мех',
              attribute: model.logic,
              isDefault: false),
          SkillModel(
              name: 'Морск Мех',
              attribute: model.logic,
              isDefault: false),
          SkillModel(
              name: 'Пром Мех',
              attribute: model.logic,
              isDefault: false),
          SkillModel(
              name: 'Авто Мех',
              attribute: model.logic,
              isDefault: false),
        ]),
      ], freeSkills: [
        SkillModel(
            name: 'Химия', attribute: model.logic, isDefault: false),
        SkillModel(name: 'Подделка', attribute: model.logic),
        SkillModel(name: 'Оружейник', attribute: model.logic),
        SkillModel(
            name: 'Ремесло',
            attribute: model.intuition,
            isDefault: false),
        SkillModel(
            name: 'Биотехнология',
            attribute: model.logic,
            isDefault: false),
      ]),

      //СКРЫТНОСТЬ+
      SkillTypeModel(name: 'Скрытность', skillGroups: [
        SkillGroupModel(name: 'Незаметность', skills: [
          SkillModel(name: 'Маскировка', attribute: model.intuition),
          SkillModel(name: 'Скрытность', attribute: model.agility),
          SkillModel(
              name: 'Ловкость рук',
              attribute: model.agility,
              isDefault: false),
        ]),
      ], freeSkills: [
        SkillModel(
            name: 'Взлом замков',
            attribute: model.agility,
            isDefault: false),
      ]),

      //ВОЖДЕНИЕ+
      SkillTypeModel(name: 'Вождение', skillGroups: [], freeSkills: [
        SkillModel(name: 'Автомобили', attribute: model.reaction),
        SkillModel(name: 'Корабли', attribute: model.reaction),
        SkillModel(
            name: 'Шагатели',
            attribute: model.reaction,
            isDefault: false),
        SkillModel(
            name: 'Самолеты',
            attribute: model.reaction,
            isDefault: false),
        SkillModel(
            name: 'Космос',
            attribute: model.reaction,
            isDefault: false),
      ]),

      //МАГИЧЕСКИЕ НАВЫКИ+
      SkillTypeModel(name: 'Магические', skillGroups: [
        SkillGroupModel(name: 'Зачарование', skills: [
          SkillModel(name: 'Алхимия', attribute: model.magic),
          SkillModel(name: 'Артефакты', attribute: model.magic),
          SkillModel(name: 'Освобождение', attribute: model.magic),
        ]),
        SkillGroupModel(name: 'Призыв', skills: [
          SkillModel(name: 'Связывание', attribute: model.magic),
          SkillModel(name: 'Призыв', attribute: model.magic),
          SkillModel(name: 'Изгнание', attribute: model.magic),
        ]),
        SkillGroupModel(name: 'Колдовство', skills: [
          SkillModel(name: 'Чародейство', attribute: model.magic),
          SkillModel(name: 'Контрчародейсво', attribute: model.magic),
          SkillModel(name: 'Ритуалы', attribute: model.magic),
        ]),
      ], freeSkills: [
        SkillModel(name: 'Астральный бой', attribute: model.willpower, isDefault: false),
        SkillModel(name: 'Чувствование', attribute: model.intuition, isDefault: false),
        SkillModel(name: 'Аркана', attribute: model.logic, isDefault: false),
      ]),

      //РЕЗОНАНС
      SkillTypeModel(name: 'Резонанс', skillGroups: [
        SkillGroupModel(name: 'Поручение', skills: [
          SkillModel(name: 'Компиляция', attribute: model.magic),
          SkillModel(name: 'Декомпиляция', attribute: model.magic),
          SkillModel(name: 'Регистрация', attribute: model.magic),
        ]),
        
      ], freeSkills: [
        
      ]),
    ];
  }
}
