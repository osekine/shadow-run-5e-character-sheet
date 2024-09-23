// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Str`
  String get strength {
    return Intl.message(
      'Str',
      name: 'strength',
      desc: '',
      args: [],
    );
  }

  /// `Agl`
  String get agility {
    return Intl.message(
      'Agl',
      name: 'agility',
      desc: '',
      args: [],
    );
  }

  /// `Body`
  String get body {
    return Intl.message(
      'Body',
      name: 'body',
      desc: '',
      args: [],
    );
  }

  /// `Int`
  String get intuition {
    return Intl.message(
      'Int',
      name: 'intuition',
      desc: '',
      args: [],
    );
  }

  /// `WP`
  String get willpower {
    return Intl.message(
      'WP',
      name: 'willpower',
      desc: '',
      args: [],
    );
  }

  /// `Char`
  String get charisma {
    return Intl.message(
      'Char',
      name: 'charisma',
      desc: '',
      args: [],
    );
  }

  /// `Log`
  String get logic {
    return Intl.message(
      'Log',
      name: 'logic',
      desc: '',
      args: [],
    );
  }

  /// `Rea`
  String get reaction {
    return Intl.message(
      'Rea',
      name: 'reaction',
      desc: '',
      args: [],
    );
  }

  /// `Mag`
  String get magic {
    return Intl.message(
      'Mag',
      name: 'magic',
      desc: '',
      args: [],
    );
  }

  /// `Ent`
  String get entity {
    return Intl.message(
      'Ent',
      name: 'entity',
      desc: '',
      args: [],
    );
  }

  /// `Edge`
  String get edge {
    return Intl.message(
      'Edge',
      name: 'edge',
      desc: '',
      args: [],
    );
  }

  /// `Main`
  String get navMain {
    return Intl.message(
      'Main',
      name: 'navMain',
      desc: '',
      args: [],
    );
  }

  /// `Infi`
  String get navInfo {
    return Intl.message(
      'Infi',
      name: 'navInfo',
      desc: '',
      args: [],
    );
  }

  /// `Combat`
  String get navCombat {
    return Intl.message(
      'Combat',
      name: 'navCombat',
      desc: '',
      args: [],
    );
  }

  /// `Magic`
  String get navMagic {
    return Intl.message(
      'Magic',
      name: 'navMagic',
      desc: '',
      args: [],
    );
  }

  /// `Matrix`
  String get navMatrix {
    return Intl.message(
      'Matrix',
      name: 'navMatrix',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get navSettings {
    return Intl.message(
      'Settings',
      name: 'navSettings',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get navAbout {
    return Intl.message(
      'About',
      name: 'navAbout',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get navLogout {
    return Intl.message(
      'Logout',
      name: 'navLogout',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
