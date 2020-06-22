import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import '../app/second_page.dart';
import 'local_notications_helper.dart';

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class NotificationHandler {

  static final NotificationHandler _singleton = NotificationHandler._internal();
  factory NotificationHandler() {
    return _singleton;
  }
  NotificationHandler._internal();
  BuildContext myContext;
  static final notifications = FlutterLocalNotificationsPlugin();


  initializeFCMNotification(BuildContext context) async {
    myContext = context;



    var settingsAndroid =
    new AndroidInitializationSettings('@mipmap/launcher_icon');
    final settingsIOS = IOSInitializationSettings(
        onDidReceiveLocalNotification: (id, title, body, payload) =>
            onSelectNotification(payload));

    notifications.initialize(
        InitializationSettings(settingsAndroid, settingsIOS),
        onSelectNotification: onSelectNotification);
  }

  static void showNotification(String title,String body){
    showOngoingNotification(notifications,
        title: title, body: body, id: 20);
  }
  /*



  static void showNotification(Map<String, dynamic> message) async {
    //var userURLPath =
    await _downloadAndSaveImage(message["data"]["profilURL"], 'largeIcon');

    var mesaj = Person(
        name: message["data"]["title"],
        key: '1',
        //icon: userURLPath,
        iconSource: IconSource.FilePath);
    var mesajStyle = MessagingStyleInformation(mesaj,
        messages: [Message(message["data"]["message"], DateTime.now(), mesaj)]);

    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        '1234', 'Yeni Mesaj', 'your channel description',
        style: AndroidNotificationStyle.Messaging,
        styleInformation: mesajStyle,
        importance: Importance.Max,
        priority: Priority.High,
        ticker: 'ticker');
    var iOSPlatformChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(0, message["data"]["title"],
        message["data"]["message"], platformChannelSpecifics,
        payload: jsonEncode(message));
  }
   */

  Future onSelectNotification(String payload) async => await Navigator.push(
    myContext,
    MaterialPageRoute(builder: (context) => SecondPage(payload: payload)),
  );




}
