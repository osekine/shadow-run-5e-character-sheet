import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/features/info/view/main_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/info/model/attributes_model.dart';
import 'common/model/character_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final Future<CharacterModel> _character;

  @override
  void initState() {
    _character = _loadCharacter();
    super.initState();
  }

  Future<CharacterModel> _loadCharacter() async {
    final prefs = await SharedPreferences.getInstance();
    final json = prefs.getString('character');
    if (json != null) {
      return CharacterModel.fromJson(jsonDecode(json));
    }
    return CharacterModel.start(attributes: Attributes.start());
  }

  @override
  void dispose() {
    super.dispose();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shadowrun 5e Character Sheet',
      theme: ThemeData(
        fontFamily: 'JetBrains Mono',
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 238, 224, 31)),
        useMaterial3: true,
      ),
      home: FutureBuilder<CharacterModel>(
        future: _character,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return MainScreen(model: snapshot.data!);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
