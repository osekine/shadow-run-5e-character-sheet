import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:shadowrun_5e_character_sheet/common/data/i_repository.dart';
import 'package:shadowrun_5e_character_sheet/common/data/sp_repository.dart';
import 'package:shadowrun_5e_character_sheet/features/info/view/main_screen.dart';

import 'common/model/character_model.dart';
import 'generated/l10n.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.I.registerSingleton<IRepository>(SharedPreferencesRepository());
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final Future<CharacterModel?> _character;

  @override
  void initState() {
    final repo = GetIt.I.get<IRepository>();
    _character = repo.loadCharacter();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shadowrun 5e Character Sheet',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        fontFamily: 'JetBrains Mono',
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 238, 224, 31)),
        useMaterial3: true,
      ),
      home: FutureBuilder<CharacterModel?>(
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
