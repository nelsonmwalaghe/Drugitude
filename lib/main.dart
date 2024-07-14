import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:cron/cron.dart';
import 'package:drugitudeleviosa/notificationsmodel/notificationservices.dart';
import 'package:drugitudeleviosa/pages/MainScreen.dart';
import 'package:drugitudeleviosa/pages/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_icons/flutter_app_icons.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:rive/rive.dart';
import 'adverseDrugReactionReportModel/adversedrugreaction_api.dart';
import 'drug_request_model/drugrequestsheets_api.dart';
import 'pages/landingpage.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox(SETTINGS_BOX);
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
      home: const SplashScreen(),
    );
  }
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
          child: SizedBox(
            width: 192,
            child: Column(
              children: [
                Text('Drugitude', style: TextStyle(color: Colors.white, fontSize: 20),textAlign: TextAlign.center),
                SizedBox(height: 20),
                Expanded(
                    child: RiveAnimation.asset(
                        'assets/drugiconLoading.riv')),
                // Text('Loading...', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15, fontStyle:FontStyle.italic )),
              ],
            ),
          )),
      nextScreen: MainScreen(),
      splashIconSize: 192,
      backgroundColor: Colors.white,
    );
  }
}
