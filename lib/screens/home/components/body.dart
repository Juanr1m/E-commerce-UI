import 'package:flutter/material.dart';
import 'package:flutter_way/screens/home/components/discount_banner.dart';

import 'package:flutter_way/size_config.dart';

import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(30)),
            DiscountBanner(),
          ],
        ),
      ),
    );
  }
}
