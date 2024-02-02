import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NotificationService {
  static Future<void> initializeNotification()
async {
    await AwesomeNotifications().initialize(
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
        ],
        channelGroups: [
          NotificationChannelGroup(
        channelGroupKey: 'High Importance Channel Group',
        channelGroupName: 'Group 1'
    )
        ],
      debug: true,
    );

    await AwesomeNotifications().isNotificationAllowed().then((isAllowed) async {
      if(!isAllowed) { await AwesomeNotifications().requestPermissionToSendNotifications();
      }
    }
    );

    await AwesomeNotifications().setListeners(
        onActionReceivedMethod: onActionReceivedMethod,
    onNotificationCreatedMethod: onNotificationCreatedMethod,
      onNotificationDisplayedMethod: onNotificationDisplayedMethod,
      onDismissActionReceivedMethod: onDismissActionReceivedMethod,
    );
}


//use this method to detect new notification
static Future<void> onNotificationCreatedMethod(
    ReceivedNotification receivedNotification
    ) async {
    debugPrint('onNotificationCreatedMethod');
}
static Future<void> onNotificationDisplayedMethod(
    ReceivedNotification receivedNotification
    ) async {
    debugPrint('onNotificationDisplayedMethod');
}
static Future<void>onDismissActionReceivedMethod(
    ReceivedNotification receivedNotification
    ) async {
    debugPrint('onDismissActionReceivedMethod');
}
static Future<void>onActionReceivedMethod(
    ReceivedNotification receivedNotification
    ) async {
    debugPrint('onActionReceivedMethod');
    // // final payload = receivedAction.payload ?? {};
    // // if (payload["Navigate"] == "true") {
    // //   MyApp.navigatorKey.currentState?.push(
    // //     MaterialPageRoute(builder: (_) => const LandingPage(),
    // //     )
    //   );
    // }
}
static Future<void>showNotification({
  // required int hoursFromNow,
  bool repeatNotif = false,
  required final String title,
  required final String body,
  required String? summary,
  final Map<String, String>?payload,
  final NotificationLayout notificationLayout = NotificationLayout.Default,
  final NotificationCategory? category,
  final String? bigPicture,
  final List<NotificationActionButton>? actionButtons,
  final bool scheduled = false,
  final int? interval,
}) async {
    // assert (!scheduled || (scheduled && interval != null));
    // var nowDate = DateTime.now().add(Duration(hours: hoursFromNow, seconds: 5));

    await AwesomeNotifications().createNotification(
      // schedule: NotificationCalendar(
      //   //weekday: nowDate.day,
      //   hour: nowDate.hour,
      //   minute: 0,
      //   second: nowDate.second,
      //   repeats: repeatNotif,
      //   //allowWhileIdle: true,
      //   ),

        content: NotificationContent(
            id: 1,
            channelKey: "High Importance Channel",
          title: "Drugitude",
            body: "Check out Drug of the Day",
          notificationLayout: notificationLayout,
          actionType: ActionType.Default,
          summary: summary,
          category: category,
          payload: payload,
          bigPicture: bigPicture,
        ),
      actionButtons: actionButtons,
      // schedule: scheduled
      //   ? NotificationInterval(
      //   interval: interval,
      //   timeZone:
      //     await AwesomeNotifications().getLocalTimeZoneIdentifier(),
      //   preciseAlarm: true
      // )
      //     : null,
    );
}
static Future<bool>scheduleNotification() async {
final AwesomeNotifications awesomeNotifications = AwesomeNotifications();
return await awesomeNotifications.createNotification(
    schedule: NotificationCalendar(
        hour: 17,
      repeats: true,
    ),
  content: NotificationContent(
      id: 3,
      channelKey: "High Importance Channel",
    title: "Drugitude",
    body: "check out Drug of the Day",
  )
);
}
}