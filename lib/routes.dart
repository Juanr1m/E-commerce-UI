import 'package:flutter/widgets.dart';
import 'package:flutter_way/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter_way/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_way/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SigninScreen.routeName: (context) => SigninScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
};
