import 'package:flutter/material.dart';

import 'components/body.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key key}) : super(key: key);
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("Sign in"),
    );
  }
}
