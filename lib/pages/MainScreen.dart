import 'package:drugitudeleviosa/pages/landingpage.dart';
import 'package:drugitudeleviosa/pages/welcomScreen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(Hive.box(SETTINGS_BOX).get("welcome_shown"));
    return ValueListenableBuilder(
      valueListenable: Hive.box(SETTINGS_BOX).listenable(),
      builder: (context, box,child) => box.get('welcome_shown',
      defaultValue: false) ? const LandingPage() :
        const WelcomeScreen());
  }
}
