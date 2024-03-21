enum Firemode { ss, sa, fa, bf }

enum DamageType { flesh, stun }

class WeaponModel {
  final String? name;
  final String? type;
  final int? accuracy;
  final int? damage;
  final int? AP;
  final int? magazine;
  final DamageType? damageType;
  final List<Firemode?> firemode;
  final int? recoil;
  List<WeaponMod?>? mods;

  WeaponModel({
    required this.damageType,
    required this.name,
    required this.type,
    required this.accuracy,
    required this.damage,
    required this.AP,
    required this.magazine,
    required this.recoil,
    required this.firemode,
    this.mods
  });
}

class WeaponMod {
  String? name;
  String? description;
}

Map<String, WeaponModel> tasers = {
  'Defiance': WeaponModel(
      name: 'Defiance EX Shocker',
      type: 'Taser',
      accuracy: 4,
      damage: 9,
      damageType: DamageType.stun,
      AP: -5,
      magazine: 4,
      recoil: 0,
      firemode: [Firemode.ss]),
  'Yamaha': WeaponModel(
      name: 'Yamaha Pulsar',
      type: 'Taser',
      accuracy: 5,
      damage: 7,
      damageType: DamageType.stun,
      AP: -5,
      magazine: 4,
      recoil: 0,
      firemode: [Firemode.sa]),
};
Map<String, WeaponModel> holdouts = {
  'Fichetti': WeaponModel(
      name: 'Fichetti Tiffani Needler',
      type: 'Hold-Out',
      accuracy: 5,
      damage: 8,
      damageType: DamageType.flesh,
      AP: 5,
      magazine: 4,
      recoil: 0,
      firemode: [Firemode.sa]),
  'Streetline': WeaponModel(
      name: 'Streetline Special',
      type: 'Hold-Out',
      accuracy: 4,
      damage: 6,
      damageType: DamageType.flesh,
      AP: 0,
      magazine: 6,
      recoil: 0,
      firemode: [Firemode.sa]),
  'Walther': WeaponModel(
      name: 'Walther Palm Pistol',
      type: 'Hold-Out',
      accuracy: 4,
      damage: 7,
      damageType: DamageType.flesh,
      AP: 0,
      magazine: 2,
      recoil: 0,
      firemode: [Firemode.ss, Firemode.bf]),
};
Map<String, WeaponModel> heavyPistols = {
  'AresViperV': WeaponModel(
      name: 'Ares Viper V',
      type: 'Heavy Pistol',
      accuracy: 5,
      damage: 8,
      damageType: DamageType.flesh,
      AP: -1,
      magazine: 15,
      recoil: 0,
      firemode: [Firemode.sa]),
  'AresViperSilverGun': WeaponModel(
      name: 'Ares Viper Silvergun',
      type: 'Heavy Pistol',
      accuracy: 4,
      damage: 9,
      damageType: DamageType.flesh,
      AP: 4,
      magazine: 30,
      recoil: 0,
      firemode: [Firemode.sa, Firemode.bf]),
  'Browning': WeaponModel(
      name: 'Browning Ultra-Power',
      type: 'Heavy Pistol',
      accuracy: 5,
      damage: 8,
      damageType: DamageType.flesh,
      AP: -1,
      magazine: 10,
      recoil: 0,
      firemode: [Firemode.sa]),
  'Colt': WeaponModel(
      name: 'Colt Government 2066',
      type: 'Heavy Pistol',
      accuracy: 6,
      damage: 7,
      damageType: DamageType.flesh,
      AP: -1,
      magazine: 14,
      recoil: 0,
      firemode: [Firemode.sa]),
  'RemingtonRoomRegular': WeaponModel(
      name: 'Remington Roomsweeper',
      type: 'Heavy Pistol',
      accuracy: 4,
      damage: 7,
      damageType: DamageType.flesh,
      AP: -1,
      magazine: 8,
      recoil: 0,
      firemode: [Firemode.sa]),
  'RemingtonRoomNeedle': WeaponModel(
      name: 'Remington Roomsweeper (Needle)',
      type: 'Heavy Pistol',
      accuracy: 4,
      damage: 9,
      damageType: DamageType.flesh,
      AP: 4,
      magazine: 8,
      recoil: 0,
      firemode: [Firemode.sa]),
  'Ruger': WeaponModel(
      name: 'Ruger Super Warhawk',
      type: 'Heavy Pistol',
      accuracy: 4,
      damage: 7,
      damageType: DamageType.flesh,
      AP: -1,
      magazine: 8,
      recoil: 0,
      firemode: [Firemode.ss]),
};
Map<String, WeaponModel> lightPistols = {
  'Ares75': WeaponModel(
      name: 'Ares Light Fire 75',
      type: 'Light Pistol',
      accuracy: 6,
      damage: 6,
      damageType: DamageType.flesh,
      AP: 0,
      magazine: 16,
      recoil: 0,
      firemode: [Firemode.sa]),
  'Ares70': WeaponModel(
      name: 'Ares Light Fire 70',
      type: 'Light Pistol',
      accuracy: 7,
      damage: 6,
      damageType: DamageType.flesh,
      AP: 0,
      magazine: 16,
      recoil: 0,
      firemode: [Firemode.sa]),
  'Beretta': WeaponModel(
      name: 'Beretta 201T',
      type: 'Light Pistol',
      accuracy: 6,
      damage: 6,
      damageType: DamageType.flesh,
      AP: 0,
      magazine: 21,
      recoil: 0,
      firemode: [Firemode.sa, Firemode.bf]),
  'Colt': WeaponModel(
      name: 'Colt America L36',
      type: 'Light Pistol',
      accuracy: 7,
      damage: 7,
      damageType: DamageType.flesh,
      AP: 0,
      magazine: 11,
      recoil: 0,
      firemode: [Firemode.sa]),
  'Fichetti': WeaponModel(
      name: 'Fichetti Security 600',
      type: 'Light Pistol',
      accuracy: 6,
      damage: 7,
      damageType: DamageType.flesh,
      AP: 0,
      magazine: 30,
      recoil: 0,
      firemode: [Firemode.sa]),
  'Taurus': WeaponModel(
      name: 'Taurus Omni-6',
      type: 'Light Pistol',
      accuracy: 5,
      damage: 6,
      damageType: DamageType.flesh,
      AP: 0,
      magazine: 6,
      recoil: 0,
      firemode: [Firemode.sa, Firemode.ss]),
};
Map<String, WeaponModel> machinePistols = {
  'Ares': WeaponModel(
      name: 'Ares Crusader II',
      type: 'Machine Pistol',
      accuracy: 5,
      damage: 7,
      damageType: DamageType.flesh,
      AP: 0,
      magazine: 40,
      recoil: 2,
      firemode: [Firemode.sa, Firemode.bf]),
  'Ceska': WeaponModel(
      name: 'Cesa Back Scorpion',
      type: 'Machine Pistol',
      accuracy: 5,
      damage: 6,
      damageType: DamageType.flesh,
      AP: 0,
      magazine: 35,
      recoil: 1,
      firemode: [Firemode.sa, Firemode.bf]),
  'Steyr': WeaponModel(
      name: 'Steyr TMP',
      type: 'Machine Pistol',
      accuracy: 4,
      damage: 7,
      damageType: DamageType.flesh,
      AP: 0,
      magazine: 30,
      recoil: 0,
      firemode: [Firemode.sa, Firemode.bf, Firemode.fa]),
};
Map<String, WeaponModel> submachineGuns = {
  'Colt': WeaponModel(
      name: 'Colt Cobra TZ-120',
      type: 'Submachine Gun',
      accuracy: 4,
      damage: 7,
      damageType: DamageType.flesh,
      AP: 0,
      magazine: 32,
      recoil: 2,
      firemode: [Firemode.sa, Firemode.bf, Firemode.fa]),
  'FN': WeaponModel(
      name: 'FN P93 Praetor',
      type: 'Submachine Gun',
      accuracy: 6,
      damage: 8,
      damageType: DamageType.flesh,
      AP: 0,
      magazine: 50,
      recoil: 1,
      firemode: [Firemode.sa, Firemode.bf, Firemode.fa]),
  'HK': WeaponModel(
      name: 'HK - 227',
      type: 'Submachine Gun',
      accuracy: 5,
      damage: 7,
      damageType: DamageType.flesh,
      AP: 0,
      magazine: 28,
      recoil: 0,
      firemode: [Firemode.sa, Firemode.bf, Firemode.fa]),
  'Ingram': WeaponModel(
      name: 'Ingram Smartgun X',
      type: 'Submachine Gun',
      accuracy: 4,
      damage: 8,
      damageType: DamageType.flesh,
      AP: 0,
      magazine: 32,
      recoil: 2,
      firemode: [Firemode.bf, Firemode.fa]),
  'SCK': WeaponModel(
      name: 'SCK Model 100',
      type: 'Submachine Gun',
      accuracy: 5,
      damage: 8,
      damageType: DamageType.flesh,
      AP: 0,
      magazine: 30,
      recoil: 0,
      firemode: [Firemode.sa, Firemode.fa]),
  'Uzi': WeaponModel(
      name: 'Uzi IV',
      type: 'Submachine Gun',
      accuracy: 4,
      damage: 7,
      damageType: DamageType.flesh,
      AP: 0,
      magazine: 24,
      recoil: 0,
      firemode: [Firemode.bf]),
};
Map<String, WeaponModel> assaultRifles = {
  'AK': WeaponModel(
      name: 'AK-97',
      type: 'Assault Rifle',
      accuracy: 5,
      damage: 10,
      damageType: DamageType.flesh,
      AP: -2,
      magazine: 38,
      recoil: 0,
      firemode: [Firemode.sa, Firemode.bf, Firemode.fa]),
  'Ares': WeaponModel(
      name: 'Ares Alpha',
      type: 'Assault Rifle',
      accuracy: 5,
      damage: 11,
      damageType: DamageType.flesh,
      AP: -2,
      magazine: 42,
      recoil: 2,
      firemode: [Firemode.sa, Firemode.bf, Firemode.fa]),
  'Colt': WeaponModel(
      name: 'Colt M23',
      type: 'Assault Rifle',
      accuracy: 4,
      damage: 9,
      damageType: DamageType.flesh,
      AP: -2,
      magazine: 40,
      recoil: 0,
      firemode: [Firemode.sa, Firemode.bf, Firemode.fa]),
  'FN': WeaponModel(
      name: 'FN HAR',
      type: 'Assault Rifle',
      accuracy: 5,
      damage: 10,
      damageType: DamageType.flesh,
      AP: -2,
      magazine: 35,
      recoil: 2,
      firemode: [Firemode.sa, Firemode.bf, Firemode.fa]),
  'Yamaha': WeaponModel(
      name: 'Yamaha Raiden',
      type: 'Assault Rifle',
      accuracy: 6,
      damage: 11,
      damageType: DamageType.flesh,
      AP: -2,
      magazine: 60,
      recoil: 1,
      firemode: [Firemode.bf, Firemode.fa]),
};
Map<String, WeaponModel> sniperRifles = {
  'Ares': WeaponModel(
      name: 'Ares Desert Strike',
      type: 'Sniper Rifle',
      accuracy: 7,
      damage: 13,
      damageType: DamageType.flesh,
      AP: -4,
      magazine: 14,
      recoil: 0,
      firemode: [Firemode.sa]),
  'Cavalier': WeaponModel(
      name: 'Cavalier Arms Crockett EBR',
      type: 'Sniper Rifle',
      accuracy: 6,
      damage: 12,
      damageType: DamageType.flesh,
      AP: -3,
      magazine: 20,
      recoil: 0,
      firemode: [Firemode.sa, Firemode.bf]),
  'Ranger': WeaponModel(
      name: 'Ranger Arms SM-5',
      type: 'Sniper Rifle',
      accuracy: 8,
      damage: 14,
      damageType: DamageType.flesh,
      AP: -5,
      magazine: 15,
      recoil: 0,
      firemode: [Firemode.sa]),
  'Remington': WeaponModel(
      name: 'Remington 950',
      type: 'Sniper Rifle',
      accuracy: 7,
      damage: 12,
      damageType: DamageType.flesh,
      AP: -4,
      magazine: 5,
      recoil: 0,
      firemode: [Firemode.ss]),
  'Ruger': WeaponModel(
      name: 'Ruger',
      type: 'Sniper Rifle',
      accuracy: 6,
      damage: 11,
      damageType: DamageType.flesh,
      AP: -3,
      magazine: 8,
      recoil: 0,
      firemode: [Firemode.sa]),
};
Map<String, WeaponModel> shotguns = {
  'Defiance': WeaponModel(
      name: 'Defiance T-250',
      type: 'Shotgun',
      accuracy: 4,
      damage: 10,
      damageType: DamageType.flesh,
      AP: -1,
      magazine: 5,
      recoil: 0,
      firemode: [Firemode.sa, Firemode.ss]),
  'Enfield': WeaponModel(
      name: 'Enfield AS-7',
      type: 'Shotgun',
      accuracy: 4,
      damage: 13,
      damageType: DamageType.flesh,
      AP: -1,
      magazine: 10,
      recoil: 0,
      firemode: [Firemode.sa, Firemode.bf]),
  'PJSS': WeaponModel(
      name: 'PJSS Model 55',
      type: 'Shotgun',
      accuracy: 6,
      damage: 11,
      damageType: DamageType.flesh,
      AP: -1,
      magazine: 2,
      recoil: 0,
      firemode: [Firemode.ss]),
};
Map<String, WeaponModel> machineGuns = {
  'Ingram': WeaponModel(
      name: 'Ingram Valiant',
      type: 'Machinegun',
      accuracy: 5,
      damage: 9,
      damageType: DamageType.flesh,
      AP: -2,
      magazine: 50,
      recoil: 2,
      firemode: [Firemode.sa, Firemode.fa]),
  'Ares': WeaponModel(
      name: 'Stoner-Ares M202',
      type: 'Machinegun',
      accuracy: 5,
      damage: 10,
      damageType: DamageType.flesh,
      AP: -3,
      magazine: 50,
      recoil: 0,
      firemode: [Firemode.fa]),
  'RPK': WeaponModel(
      name: 'RPK HMG',
      type: 'Machinegun',
      accuracy: 5,
      damage: 12,
      damageType: DamageType.flesh,
      AP: -4,
      magazine: 50,
      recoil: 0,
      firemode: [Firemode.fa]),
};
Map<String, WeaponModel> launchers = {
  'Ares': WeaponModel(
      name: 'Ares Antioch-2',
      type: 'Laucher',
      accuracy: 4,
      damage: null,
      damageType: null,
      AP: null,
      magazine: 8,
      recoil: 0,
      firemode: [Firemode.ss]),
  'ArmTech': WeaponModel(
      name: 'ArmTech MGL-12',
      type: 'Laucher',
      accuracy: 4,
      damage: null,
      damageType: null,
      AP: null,
      magazine: 12,
      recoil: 2,
      firemode: [Firemode.sa]),
  'Actech': WeaponModel(
      name: 'Atechnology Striker',
      type: 'Laucher',
      accuracy: 5,
      damage: null,
      damageType: null,
      AP: null,
      magazine: 1,
      recoil: 0,
      firemode: [Firemode.ss]),
    'Krime': WeaponModel(
      name: 'Krime Cannon',
      type: 'Laucher',
      accuracy: 4,
      damage: 16,
      damageType: DamageType.flesh,
      AP: -6,
      magazine: 6,
      recoil: 0,
      firemode: [Firemode.sa]),
    'Onotari': WeaponModel(
      name: 'Onotari Interceptor',
      type: 'Laucher',
      accuracy: 4,
      damage: null,
      damageType: null,
      AP: null,
      magazine: 2,
      recoil: 0,
      firemode: [Firemode.ss]),
    'Panther': WeaponModel(
      name: 'Panther XXL',
      type: 'Laucher',
      accuracy: 4,
      damage: 16,
      damageType: DamageType.flesh,
      AP: -6,
      magazine: 6,
      recoil: 0,
      firemode: [Firemode.sa]),
};

Map<String, Map<String, WeaponModel>> weapons = {
  'Tasers': tasers,
  'Holdouts': holdouts,
  'Light Pistols': lightPistols,
  'Heavy Pistols': heavyPistols,
  'Machine Pistols': machinePistols,
  'Submachine Guns': submachineGuns,
  'Assault Rifles': assaultRifles,
  'Sniper Rifles': sniperRifles,
  'Shotguns': shotguns,
  'Machine Guns': machineGuns,
  'Launchers': launchers
};


class MeleeWeaponModel
{
  final String? name;
  final int? accuracy;
  final int? reach;
  final int? damage;
  final DamageType? damageType;
  final int? AP;
  List<WeaponMod?>? mods;
  MeleeWeaponModel({this.name, this.reach,this.accuracy, this.damage, this.damageType, this.AP, this.mods});
}

Map<String, MeleeWeaponModel> blades = {
  'Axe': MeleeWeaponModel(
    name: 'Combat Axe',
    accuracy: 4,
    reach: 2,
    damage: 5,
    damageType: DamageType.flesh,
    AP: -4
  ),
  'CombatKnife': MeleeWeaponModel(
    name: 'Combat Knife',
    accuracy: 6,
    reach: 0,
    damage: 2,
    damageType: DamageType.flesh,
    AP: -3
  ),
  'Mantis': MeleeWeaponModel(
    name: 'Forearm Snapblades',
    accuracy: 4,
    reach: 0,
    damage: 2,
    damageType: DamageType.flesh,
    AP: -2
  ),
  'Katana': MeleeWeaponModel(
    name: 'Katana',
    accuracy: 7,
    reach: 1,
    damage: 3,
    damageType: DamageType.flesh,
    AP: -3
  ),
  'Knife': MeleeWeaponModel(
    name: 'Knife',
    accuracy: 5,
    reach: 0,
    damage: 1,
    damageType: DamageType.flesh,
    AP: -1
  ),
  'Pole': MeleeWeaponModel(
    name: 'Pole Arm',
    accuracy: 5,
    reach: 3,
    damage: 3,
    damageType: DamageType.flesh,
    AP: -2
  ),
  'EmergncyKnife': MeleeWeaponModel(
    name: 'Emergency Knife',
    accuracy: 5,
    reach: 0,
    damage: 2,
    damageType: DamageType.flesh,
    AP: -1
  ),
  'Sword': MeleeWeaponModel(
    name: 'Sword',
    accuracy: 5,
    reach: 1,
    damage: 3,
    damageType: DamageType.flesh,
    AP: -2
  ),
};
Map<String, MeleeWeaponModel> clubs = {
  'Club': MeleeWeaponModel(
    name: 'Club',
    accuracy: 4,
    reach: 1,
    damage: 3,
    damageType: DamageType.flesh,
    AP: 0
  ),
  'Baton': MeleeWeaponModel(
    name: 'Extendable Baton',
    accuracy: 5,
    reach: 1,
    damage: 2,
    damageType: DamageType.flesh,
    AP: 0
  ),
  'Sap': MeleeWeaponModel(
    name: 'Sap',
    accuracy: 5,
    reach: 0,
    damage: 2,
    damageType: DamageType.flesh,
    AP: 0
  ),
  'Staff': MeleeWeaponModel(
    name: 'Stuff',
    accuracy: 6,
    reach: 2,
    damage: 3,
    damageType: DamageType.flesh,
    AP: 0
  ),
  'StunBaton': MeleeWeaponModel(
    name: 'Stun Baton',
    accuracy: 4,
    reach: 1,
    damage: 9,
    damageType: DamageType.stun,
    AP: -5
  ),
  'TelescopingStuff': MeleeWeaponModel(
    name: 'Telescoping Stuff',
    accuracy: 4,
    reach: 2,
    damage: 2,
    damageType: DamageType.flesh,
    AP: 0
  ),
};
Map<String, MeleeWeaponModel> other = {
  'Knucks': MeleeWeaponModel(
    name: 'Knucks',
    accuracy: null,
    reach: 0,
    damage: 1,
    damageType: DamageType.flesh,
    AP: 0
  ),
  'Mono': MeleeWeaponModel(
    name: 'Monofilament Whip',
    accuracy: 5,
    reach: 2,
    damage: 12,
    damageType: DamageType.flesh,
    AP: -8
  ),
  'ShockGloves': MeleeWeaponModel(
    name: 'Shock Gloves',
    accuracy: null,
    reach: 0,
    damage: 8,
    damageType: DamageType.stun,
    AP: -5
  ),
};

Map<String, Map<String, MeleeWeaponModel>> meleeWeapons = {
  'Blades': blades,
  'Clubs': clubs,
  'Other': other
};

