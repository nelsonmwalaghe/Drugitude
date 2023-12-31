import 'package:flutter/material.dart';
import 'drug_request_model/drugrequestsheets_api.dart';
import 'pages/landingpage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DrugRequestSheetsApi.init();
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white70),
        useMaterial3: true,
      ),
      home: const LandingPage(),
    );
  }
}
