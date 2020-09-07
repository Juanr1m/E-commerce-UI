import 'package:flutter/material.dart';

import 'package:flutter_way/components/social_card.dart';
import 'package:flutter_way/constants.dart';

import 'package:flutter_way/screens/sign_in/components/sign_form.dart';

import 'package:flutter_way/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sign in with your email and password \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                SignForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: 'assets/icons/facebook-2.svg',
                      press: () {},
                    ),
                    SocalCard(
                      icon: 'assets/icons/google-icon.svg',
                      press: () {},
                    ),
                    SocalCard(
                      icon: 'assets/icons/twitter.svg',
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont have an account?",
                      style:
                          TextStyle(fontSize: getProportionateScreenWidth(16)),
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(16),
                          color: kPrimaryColor),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
