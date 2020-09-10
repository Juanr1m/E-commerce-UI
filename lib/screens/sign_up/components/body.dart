import 'package:flutter/material.dart';
import 'package:flutter_way/components/social_card.dart';
import 'package:flutter_way/constants.dart';
import 'package:flutter_way/screens/sign_up/components/sign_up_form.dart';
import 'package:flutter_way/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.03),
              Text(
                'Register Account',
                style: headingStyle,
              ),
              Text(
                'Complete your details or continue \nwith social media ',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
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
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "By continuing your confirm that you agree \nwith our Term and Condition",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
