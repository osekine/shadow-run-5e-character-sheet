import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/screen/main_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'model/attributes_model.dart';
import 'model/character_model.dart';

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
  late CharacterModel _characterModel;

  @override
  void initState() {
    _character = _loadCharacter()..then((value) => _characterModel=value);
    super.initState();
  }

  Future<CharacterModel> _loadCharacter() async {
    print('----LOADING...---');
    final prefs = await SharedPreferences.getInstance();
    final json = prefs.getString('character');
    print(json);
    if (json != null) {
      return CharacterModel.fromJson(jsonDecode(json));
    }
    return CharacterModel.start(attributes: Attributes.start());
  }

  @override
  void dispose() {
    print('a');
    super.dispose();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'JetBrains Mono',
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 238, 224, 31)),
        useMaterial3: true,
      ),
      home: FutureBuilder<CharacterModel>(
        future: _character,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            _characterModel = snapshot.data!;
            return MainScreen(model: snapshot.data!);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
