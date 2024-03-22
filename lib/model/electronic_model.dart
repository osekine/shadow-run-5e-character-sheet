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

class Deck extends ElectronicModel {
  Deck(
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
                firewall: firewall));
}
