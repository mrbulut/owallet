import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:owallet/app/second_page.dart';
import 'package:owallet/model/user.dart';
import 'package:owallet/utills/local_notications_helper.dart';
import 'package:owallet/utills/notification_handler.dart';
import 'package:provider/provider.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    NotificationHandler().initializeFCMNotification(context);


    return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListView(
      children: <Widget>[
        RaisedButton(
          child: Text('Show notification'),
          onPressed: () => NotificationHandler.showNotification( 'Tite','Body'),
        ),
      ],
    ),
  );
  }
}
