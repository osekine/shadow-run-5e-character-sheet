import 'package:shadowrun_5e_character_sheet/model/attributes_model.dart';

class ElectronicModel {
  final String name;
  final MatrixAttributes? attributes;

  ElectronicModel({required this.name, this.attributes});
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

class DeckApplication{
  final String name;
  final String description;

  const DeckApplication({required this.name, required this.description});
}
class Deck extends ElectronicModel {
  final int appCount;
  late List<DeckApplication?> apps;
  Deck(this.appCount,
      {required String name,
      required int rating,
      required int attack,
      required int sleaze,
      required int dataProc,
      required int firewall})
      : super(
            name: name,
            attributes: MatrixAttributes(
                rating: rating,
                attack: attack,
                sleaze: sleaze,
                dataProc: dataProc,
                firewall: firewall)) {
    apps = List.generate(appCount, (index) => null);
  }

  void change(AttributeModel a, AttributeModel b)
  {
    int tmp = a.value;
    a.value = b.value;
    b.value = tmp;
  }
}
