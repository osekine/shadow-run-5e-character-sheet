enum SpellType { physical, mana }

enum SpellDistance { touch, range, area }

enum SpellDamageType { physical, stun }

enum SpellTime { instant, sustain, permanent }

abstract class Spell {
  final int drain;
  final String name;
  final String description;
  final SpellType type;
  final SpellDistance distance;
  final SpellTime time;
  final SpellDamageType damageType;

  const Spell({
    required this.drain,
    required this.name,
    required this.description,
    required this.type,
    required this.distance,
    required this.time,
    required this.damageType,
  });
}
