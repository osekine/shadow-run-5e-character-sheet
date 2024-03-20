enum Firemode { ss, sa, fa }

class WeaponModel {
  String? name;
  String? type;
  int? accuracy;
  int? damage;
  int? AP;
  int? magazine;
  List<Firemode?> firemode;
  int? recoil;
  List<WeaponMod?> mods = []; 

  WeaponModel({
    this.name,
    this.type,
    this.accuracy,
    this.damage,
    this.AP,
    this.magazine,
    this.recoil,
    this.firemode = const [],
  });

}

class WeaponMod
{
  String? name;
  String? description;
}

Map <String, WeaponModel> weapons = {
  'AresViperV' : WeaponModel(name: 'Ares Viper V', type: 'Pistol', accuracy: 5, damage: 8, AP: -1, magazine: 15, recoil: 0, firemode: [Firemode.ss]),
  
};

