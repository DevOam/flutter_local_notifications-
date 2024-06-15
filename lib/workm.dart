// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:workmanager/workmanager.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:timezone/data/latest.dart' as tz;
// import 'package:timezone/timezone.dart' as tz;
//
// void callbackDispatcher() {
//   Workmanager().executeTask((task, inputData) {
//     // Fonction appelée lors de l'exécution de la tâche planifiée
//     // Ici, vous pouvez gérer l'affichage de la notification
//     showScheduledNotification();
//     return Future.value(true);
//   });
// }
//
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   Workmanager().initialize(callbackDispatcher, isInDebugMode: true);
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Scheduled Notifications')),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               scheduleNotification();
//             },
//             child: Text('Schedule Notification'),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// void scheduleNotification() {
//   Workmanager().registerOneOffTask(
//     '1', // ID de la tâche
//     'simpleTask', // Nom de la tâche
//     inputData: <String, dynamic>{},
//   );
// }
//
// void showScheduledNotification() async {
//   tz.initializeTimeZones();
//   final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//   FlutterLocalNotificationsPlugin();
//   const AndroidNotificationDetails androidNotificationDetails =
//   AndroidNotificationDetails('channel id', 'channel name',
//       channelDescription: 'channel description',
//       importance: Importance.max,
//       priority: Priority.high,
//       ticker: 'ticker');
//   const NotificationDetails notificationDetails =
//   NotificationDetails(android: androidNotificationDetails);
//
//   await flutterLocalNotificationsPlugin.zonedSchedule(
//     0, // ID de la notification
//     'Scheduled Notification',
//     'This is a scheduled notification',
//     tz.TZDateTime.now(tz.local).add(const Duration(seconds: 5)),
//     notificationDetails,
//     androidAllowWhileIdle: true,
//     uiLocalNotificationDateInterpretation:
//     UILocalNotificationDateInterpretation.absoluteTime,
//   );
// }
