import 'package:drugitudeleviosa/notificationsmodel/notificationservices.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_icons/flutter_app_icons.dart';
import 'adverseDrugReactionReportModel/adversedrugreaction_api.dart';
import 'drug_request_model/drugrequestsheets_api.dart';
import 'pages/landingpage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService.initializeNotification();
  await DrugRequestSheetsApi.init();
  await AdrSheetApi.init();


  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _flutterAppIconsPlugin = FlutterAppIcons();
  void setIcon(String? nextIcon) {
    if (nextIcon == null) return;
    _flutterAppIconsPlugin.setIcon(icon: 'assets/drugitudeiconX.png');
  }
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

