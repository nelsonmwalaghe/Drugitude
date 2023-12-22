
import 'package:drugitudeleviosa/pages/parmaceutical_group_model.dart';
import 'package:drugitudeleviosa/search_models/drug_day_search_automated.dart';
import 'package:flutter/material.dart';

import 'pages/brandName_mode.dart';
import 'pages/dictionary_mode.dart';
import 'pages/landing_page.dart';
import 'search_models/brandName_search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drugitude',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LandingPage(),
    );
  }
}
