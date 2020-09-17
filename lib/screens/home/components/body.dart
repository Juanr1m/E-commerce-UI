import 'package:flutter/material.dart';

import 'package:flutter_way/screens/home/components/discount_banner.dart';
import 'package:flutter_way/screens/home/components/popular_products.dart';

import 'package:flutter_way/screens/home/components/special_offers.dart';

import 'package:flutter_way/size_config.dart';

import 'categories.dart';
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
            SizedBox(height: getProportionateScreenHeight(30)),
            Categories(),
            SizedBox(height: getProportionateScreenHeight(30)),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenHeight(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenHeight(30))
          ],
        ),
      ),
    );
  }
}
