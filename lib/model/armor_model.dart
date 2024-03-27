class Armor {
  final String name;
  final int rating;
  int fireProtection = 0;
  int chemProtection = 0;
  int stunProtection = 0;

  List<ArmorAccesory> accesories;

  Armor({required this.name, required this.rating, required this.accesories});

  Armor.start({required this.name, required this.rating})
      : accesories = List.empty(growable: true);

  void addAccesory(ArmorAccesory addition)
  {
    addition.parent = this;
    addition.onAdd();
  }
}

class ArmorAccesory {
  String name;
  int _rating = 1;
  String description;
  Function onAdd;
  late Armor? parent;

  ArmorAccesory(
      {required this.name,
      required int rating,
      required this.description,
      required this.onAdd,
      required this.parent}) :_rating=rating;

  ArmorAccesory.start({
    required this.name,
    required this.description,
    Function? onAdd
  })  : parent = null,
        this.onAdd = onAdd ?? (() => {});
  void delete()
  {
    parent = null;
  }

  void update(int newRating)
  {
    _rating = newRating;
    onAdd();
  }
}
