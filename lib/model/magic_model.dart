enum SpellType { physical, mana }

enum SpellDistance { touch, range, area }

enum SpellDamageType { physical, stun }

enum SpellTime { instant, sustain, permanent }

class Spell {
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

enum CombatSpellModifier { direct, indirect, elemental }

class CombatSpell extends Spell {
  final List<CombatSpellModifier> modifiers;
  CombatSpell(Spell spell, {required this.modifiers})
      : super(
            drain: spell.drain,
            name: spell.name,
            description: spell.description,
            type: spell.type,
            distance: spell.distance,
            time: spell.time,
            damageType: spell.damageType);
}

enum DetectionSpellModifier { active, passive }

class DetectionSpell extends Spell {
  final List<DetectionSpellModifier> modifiers;
  DetectionSpell(Spell spell, {required this.modifiers})
      : super(
            drain: spell.drain,
            name: spell.name,
            description: spell.description,
            type: spell.type,
            distance: spell.distance,
            time: spell.time,
            damageType: spell.damageType);
}

enum HealthSpellModifier { essence }

class HealthSpell extends Spell {
  final List<HealthSpellModifier> modifiers;
  HealthSpell(Spell spell, {required this.modifiers})
      : super(
            drain: spell.drain,
            name: spell.name,
            description: spell.description,
            type: spell.type,
            distance: spell.distance,
            time: spell.time,
            damageType: spell.damageType);
}

enum IllusionSpellModifier {
  obvious,
  realistic,
  singleSense,
  multiSense,
  mana,
  physical
}

class IllusionSpell extends Spell {
  final List<IllusionSpellModifier> modifiers;
  IllusionSpell(Spell spell, {required this.modifiers})
      : super(
            drain: spell.drain,
            name: spell.name,
            description: spell.description,
            type: spell.type,
            distance: spell.distance,
            time: spell.time,
            damageType: spell.damageType);
}

enum ManipulationSpellModifier { damaging, mental, physical, environmental }

class ManipulationSpell extends Spell {
  final List<ManipulationSpellModifier> modifiers;
  ManipulationSpell(Spell spell, {required this.modifiers})
      : super(
            drain: spell.drain,
            name: spell.name,
            description: spell.description,
            type: spell.type,
            distance: spell.distance,
            time: spell.time,
            damageType: spell.damageType);
}
