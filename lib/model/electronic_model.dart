import 'package:shadowrun_5e_character_sheet/model/attributes_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'electronic_model.g.dart';

@JsonSerializable()
class ElectronicModel {
  final String name;
  final MatrixAttributes? attributes;

  ElectronicModel({required this.name, this.attributes});

  factory ElectronicModel.fromJson(Map<String, dynamic> json) => _$ElectronicModelFromJson(json);

  Map<String, dynamic> toJson() => _$ElectronicModelToJson(this);
}

class Commlink extends ElectronicModel {
  Commlink({required String name, required int rating})
      : super(
            name: name,
            attributes: MatrixAttributes(
                rating: rating,
                attack: 0,
                sleaze: 0,
                dataProc: rating,
                firewall: rating));
}

Map<String, ElectronicModel> commlinks = {
  'Metalink': Commlink(name: 'Metalink', rating: 1),
  'Sony': Commlink(name: 'Sony Emperor', rating: 2),
  'Renraku': Commlink(name: 'Renraku Sensei', rating: 3),
  'Erica': Commlink(name: 'Erica Elite', rating: 4),
  'Hermes': Commlink(name: 'Hermes Icon', rating: 5),
  'Transis': Commlink(name: 'Transis Avalon', rating: 6),
  'Firelight': Commlink(name: 'Firelight', rating: 7),
};

@JsonSerializable()
class DeckApplication {
  final String name;
  final String description;

  const DeckApplication({required this.name, required this.description});

  factory DeckApplication.fromJson(Map<String, dynamic> json) => _$DeckApplicationFromJson(json);

  Map<String, dynamic> toJson() => _$DeckApplicationToJson(this);
}

Map<String, DeckApplication> commonApps = {
  'Browser': const DeckApplication(
      name: 'Browser',
      description: 'Cокращает время нужное действию Поиск в Матрице вдвое'),
  'Configurator': const DeckApplication(
      name: 'Configurator',
      description: 'Позволяет хранить пресет конфигурации Деки'),
  'Editor': const DeckApplication(
      name: 'Editor', description: '+2 к пределу при проверках Редактирования'),
  'Encryption':
      const DeckApplication(name: 'Encryption', description: '+1 к Фаерволу'),
  'Search': const DeckApplication(
      name: 'Search', description: '+2 к Поиску ценной информации'),
  'Shredder': const DeckApplication(
      name: 'Shredder', description: '+2 к проверкам удаления файла'),
  'Signal Scrub': const DeckApplication(
      name: 'Signal Scrub', description: 'Дает +2 к уменьшению Шума'),
  'Toolbox':
      const DeckApplication(name: 'Toolbox', description: '+1 к Обработке'),
  'Virtual Machine': const DeckApplication(
      name: 'Virtual Machine',
      description:
          '+2 к количеству программ, +1 к получаемому Матричному урону'),
};
Map<String, DeckApplication> hackApps = {
  'Armor': const DeckApplication(
      name: 'Armor', description: '+2 к сопротивению Матричному урону'),
  'Baby Monitor': const DeckApplication(
      name: 'Baby Monitor', description: 'Всегда знаешь Очки наблюдения'),
  'Biofeedback': const DeckApplication(
      name: 'Biofeedback',
      description:
          'При атаках наносит  оглушающий (cold-sim) или физический (hot-sim) урон. Сопротивление СВ + Фаервол '),
  'Biofeedback Filter': const DeckApplication(
      name: 'Biofeedback Filter',
      description: '+2 к сопротивлению урона от Biofeedback'),
  'Blackout': const DeckApplication(
      name: 'Blackout',
      description:
          'При атаках наносит  оглушающий урон. Сопротивление СВ + Фаервол'),
  'Cats Paw': const DeckApplication(
      name: 'Cat\'s Paw',
      description:
          'Data Spike не наносит урон, но цель получает штра -(2 + количество Меток) ко всем действиям'),
  'Cloudless': const DeckApplication(
      name: 'Cloudless',
      description: 'Позволяет выгрузить файл из Матрицы с удалением оригинала'),
  'Crash': const DeckApplication(
      name: 'Crash', description: '+2 к проверкам Ребута девайса'),
  'Decryption':
      const DeckApplication(name: 'Decryption', description: '+1 к Атаке'),
  'Defuse': const DeckApplication(
      name: 'Defuse', description: '+4 к сопротивлению урона от Дата Бомб'),
  'Demolition': const DeckApplication(
      name: 'Demolition', description: '+1 к рейтингу Дата Бомбы'),
  'Detonator': const DeckApplication(
      name: 'Detonator',
      description:
          'Дает задержку для активации Дата Бомбы. Рейтинг Бомбы = 3, сложность обнаружения [кол-во действий до детонации -1]'),
  'Exploit': const DeckApplication(
      name: 'Exploit', description: '+2 к Hack on the Fly'),
  'Evaluate': const DeckApplication(
      name: 'Evaluate', description: 'Знаешь стоймость ценной информации'),
  'Fork': const DeckApplication(
      name: 'Fork', description: 'Совершить одно действие на 2 цели'),
  'Guard': const DeckApplication(
      name: 'Guard', description: '-1 к урону за кажду Метку на атакующем'),
  'Hammer': const DeckApplication(
      name: 'Hammer', description: '+2 к наносимому Матричному урону'),
  //TODO: уточнить
  'Hitchhiker': const DeckApplication(name: 'Hitchhiker', description: '-'),
  'Lockdown': const DeckApplication(
      name: 'Lockdown',
      description:
          'Блокирует персону, по которой прошел Матриный урон. Цель может выйти посл остановки программы или действия Jack Out'),
  'Mugger': const DeckApplication(
      name: 'Mugger', description: '+1 к Матричному урону за каждую Метку'),
  'Nuke-from-Orbit': const DeckApplication(
      name: 'Nuke-from-Orbit',
      description: 'Полностью удаляет файл из Матрицы'),
  'Paintjob': const DeckApplication(
      name: 'Paintjob', description: '+2 к Атаке при действии Erase Mark'),
  'Shell': const DeckApplication(
      name: 'Shell',
      description: '+1 к сопротивлению Матричного и Biofeedback урона'),
  'Smoke-and-Mirrors': const DeckApplication(
      name: 'Smoke-and-Mirrors',
      description: '+(1-5) к Сливу и Шуму деки. Влияет на Trace Icon)'),
  'Sneak': const DeckApplication(
      name: 'Sneak',
      description:
          '+2 к сопротивлению Trace User. ПолуБОГ не может найти физическую позицию'),
  'Stealth': const DeckApplication(name: 'Stealth', description: '+1 к Сливу'),
  'Swerve': const DeckApplication(
      name: 'Swerve', description: '+1 к сопротивлению Reboot Device'),
  'Tantrum': const DeckApplication(
      name: 'Tantrum',
      description:
          'Дата Шип не наносит урон. Живая цель в ВР страает тошнотой 3 хода'),
  'Tarball': const DeckApplication(
      name: 'Tarball', description: '+2 к Атаке и +1 к проверкам Data Crash'),
      'Track': const DeckApplication(
      name: 'Track',
      description:
          '+2 к Обработке данных для Track User или игнорирует Stealth Mode '),
          'Wrapper': const DeckApplication(
      name: 'Wrapper',
      description:
          'Позволяет маскировать персоны и программы под нехарактерные иконки'),
};

Map<String, Map<String, DeckApplication>> apps = {
  'Common': commonApps,
  'Hack': hackApps,
};

@JsonSerializable()
class Deck extends ElectronicModel {
  final int appCount;
  late List<DeckApplication?> apps;
  Deck({
    required super.name,
    required super.attributes,
    required this.appCount,
    required this.apps
   });
  Deck.start(
      {required super.name,
      required this.appCount,
      required int rating,
      required int attack,
      required int sleaze,
      required int dataProc,
      required int firewall})
      : super(
            attributes: MatrixAttributes(
                rating: rating,
                attack: attack,
                sleaze: sleaze,
                dataProc: dataProc,
                firewall: firewall)) {
    apps = List.generate(appCount, (index) => null);
  }

  factory Deck.standart({required String name, required int rating}) {
    return Deck.start(
        name: name,
        appCount: rating,
        rating: rating,
        attack: rating,
        sleaze: rating + 1,
        dataProc: rating + 2,
        firewall: rating + 3);
  }

  factory Deck.alt({required String name, required int rating}) {
    return Deck.start(
        name: name,
        appCount: rating,
        rating: rating,
        attack: rating,
        sleaze: rating + 2,
        dataProc: rating + 2,
        firewall: rating + 3);
  }

  void swap(AttributeModel a, AttributeModel b) {
    int tmp = a.value;
    a.value = b.value;
    b.value = tmp;
  }

  factory Deck.fromJson(Map<String, dynamic> json) => _$DeckFromJson(json);

  Map<String, dynamic> toJson() => _$DeckToJson(this);

}

Map<String, ElectronicModel> decks = {
  'Erica': Deck.standart(name: 'Erica MCD-1', rating: 1),
  'Microdeck': Deck.alt(name: 'Microdeck Summit', rating: 1),
  'Aztech': Deck.standart(name: 'Microtronic Aztech 200', rating: 2),
  'Hermes': Deck.alt(name: 'Hermes Chariot', rating: 2),
  'Novatech': Deck.standart(name: 'Novatech Navigator', rating: 3),
  'Renraku': Deck.alt(name: 'Renraku Tsurugi', rating: 3),
  'Sony': Deck.standart(name: 'Sony SHINE-720', rating: 4),
  'Siawase': Deck.standart(name: 'Siawase Cyber-5', rating: 5),
  'Firelight': Deck.standart(name: 'Firelight Exalibur', rating: 6),
};

Map<String, Map<String, ElectronicModel>> devicesList =
{
  'Commlinks': commlinks,
  'Decks': decks,
};