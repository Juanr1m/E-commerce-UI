import 'package:flutter/widgets.dart';
import 'package:flutter_way/screens/complete_profile/complete_profile_screen.dart';
import 'package:flutter_way/screens/details/details_screen.dart';
import 'package:flutter_way/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter_way/screens/home/home_screen.dart';
import 'package:flutter_way/screens/login_sucess/login_sucess_screen.dart';
import 'package:flutter_way/screens/otp/otp_screen.dart';
import 'package:flutter_way/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_way/screens/sign_up/sign_up_screen.dart';
import 'package:flutter_way/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SigninScreen.routeName: (context) => SigninScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSucessScreen.routeName: (context) => LoginSucessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
};
