import 'package:flutter/material.dart';
import 'package:flutter_way/screens/splash/components/body.dart';
import 'package:flutter_way/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/Splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
