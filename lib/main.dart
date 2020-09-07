import 'package:flutter/material.dart';
import 'package:flutter_way/constants.dart';
import 'package:flutter_way/routes.dart';
import 'package:flutter_way/screens/splash/splash_screen.dart';
import 'package:flutter_way/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
