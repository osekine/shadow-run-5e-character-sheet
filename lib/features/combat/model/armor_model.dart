class Armor {
  final String name;
  int rating;
  int fireProtection = 0;
  int chemProtection = 0;
  int stunProtection = 0;

  List<ArmorAccesory> accesories;

  Armor(
      {required this.name,
      required this.rating,
      required this.fireProtection,
      required this.chemProtection,
      required this.stunProtection,
      required this.accesories});

  Armor.start({required this.name, required this.rating})
      : accesories = List.empty(growable: true);

  void addAccesory(ArmorAccesory addition) {
    addition.parent = this;
    addition.onAdd(addition);
  }
}

class ArmorAccesory {
  String name;
  int _rating = 1;
  int get rating => _rating;
  String description;
  void Function(ArmorAccesory ac) onAdd;
  late Armor? parent;

  ArmorAccesory(
      {required this.name,
      required int rating,
      required this.description,
      required this.onAdd,
      required this.parent})
      : _rating = rating;

  ArmorAccesory.start(
      {required this.name,
      required this.description,
      void Function(ArmorAccesory ac)? onAdd})
      : parent = null,
        this.onAdd = onAdd ?? ((ArmorAccesory ac) => {});
  void delete() {
    parent = null;
  }

  void update(int newRating) {
    _rating = newRating;
    onAdd(this);
  }
}

Map<String, Armor> armor = {
  'actioneer': Armor.start(name: 'Actioneer Bussiness Suit', rating: 8),
  'clothing': Armor.start(name: 'Armor Clothing', rating: 6),
  'jacket': Armor.start(name: 'Armor Jacket', rating: 12),
  'vest': Armor.start(name: 'Armor Vest', rating: 9),
  'chameleon': Armor.start(name: 'Chameleon Suit', rating: 9),
  'fullbody': Armor.start(name: 'Full Body Armor', rating: 15),
  'coat': Armor.start(name: 'Lined Coat', rating: 9),
  'urban': Armor.start(name: 'Urban Explorer Jumpsuit', rating: 9),
};

Map<String, ArmorAccesory> fullbodyAccessories = {
  'fullbody helmet': ArmorAccesory.start(
      name: 'Full Body, Helmet',
      description: '+3 to rating',
      onAdd: (ac) => ac.parent?.rating += 3),
  'fullbody chem': ArmorAccesory.start(name: 'Full Body, Chemical Seal', description: 'Full Chem immunity for 1 hour', onAdd: (ac) {}),
};

Map<String, ArmorAccesory>  basicAccesories = {
  'helmet': ArmorAccesory.start( name: 'Helmet', description: '+2 to rating', onAdd: (ac) => ac.parent?.rating += 2),
  'ballistic shield': ArmorAccesory.start( name: 'Ballistic Shield', description: '+6 to rating', onAdd: (ac) => ac.parent?.rating += 6),
  'chem protection': ArmorAccesory.start(name: 'Chemical Protection', description: '+rating to chem protection', onAdd: (ac) {ac.parent?.chemProtection += ac.rating;}),
  'stun protection': ArmorAccesory.start(name: 'Nonconductivity', description: '+rating to electric damage protection', onAdd: (ac) {ac.parent?.stunProtection += ac.rating;}),
  'fire protection': ArmorAccesory.start(name: 'Fire Resistance', description: '+rating to fire damage protection', onAdd: (ac) {ac.parent?.fireProtection += ac.rating;}),
  'chem immunity': ArmorAccesory.start(name: 'Chemical Seal ', description: 'Full Chem Immunity for 1 hour', onAdd: (ac) {}),
};

Map<String, Map<String, ArmorAccesory>> accessoryList = {
  'fullbody': fullbodyAccessories,
  'basic': basicAccesories
};