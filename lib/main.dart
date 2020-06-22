import 'package:load/load.dart';
import 'package:owallet/locator.dart';
import 'package:owallet/resources/application.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owallet/app/landing_page.dart';
import 'package:owallet/resources/custom_color.dart';
import 'package:provider/provider.dart';


void main() {
  setupLocator();
  runApp(
    LoadingProvider(
      themeData: LoadingThemeData(
        tapDismiss: false,
        loadingBackgroundColor: CustomColor.purple,
        animDuration: Duration(seconds: 3),
      ),
      loadingWidgetBuilder: (ctx, data) {
        return Center(
          child: SizedBox(
            width: 30,
            height: 30,
            child: Container(
              child: CupertinoActivityIndicator(),
              color: Colors.white,
            ),
          ),
        );
      },
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        supportedLocales: application.supportedLocales(),
        title: 'Conecto',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: CustomColor.dark,
            fontFamily: "Avenir",
            textTheme: Theme.of(context).textTheme.apply(
              bodyColor: CustomColor.dark,
              displayColor: CustomColor.dark,
            )),
        home: LandingPage(),
    );
  }
}

