import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:cron/cron.dart';
import 'package:drugitudeleviosa/notificationsmodel/notificationservices.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_icons/flutter_app_icons.dart';
import 'adverseDrugReactionReportModel/adversedrugreaction_api.dart';
import 'drug_request_model/drugrequestsheets_api.dart';
import 'pages/landingpage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          channelGroupKey: 'High Importance Channel',
          channelKey: 'High Importance Channel',
          channelName: 'Basic notification',
          channelDescription: 'Check drug of the Day Notification',
          defaultColor: const Color(0xFF905000),
          importance: NotificationImportance.Max,
          channelShowBadge: true,
          onlyAlertOnce: true,
          playSound: true,
          criticalAlerts: true,
        )
      ]
  );

  final cron = Cron();
  cron.schedule(Schedule.parse('16 22 * * 1-7'),
      //parse(second, minute, hour, day/month, Month/week, day/week)
          () async => {
      // print('Remember, here to make your life easier: Drugitude'),
      await
      AwesomeNotifications().createNotification(
          // schedule: NotificationCalendar(
          //   //weekday: nowDate.day,
          //   day: 1-7,
          //   hour: 18,
          //   minute: 16,
          //   //allowWhileIdle: true,
          // ),
      content: NotificationContent(
      id: 1,
      channelKey: "High Importance Channel",
      title: "Drug Search",
      body: "Here to make your work life easier",
        wakeUpScreen: true,
        category: NotificationCategory.Reminder,
      )
      )
  });

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

