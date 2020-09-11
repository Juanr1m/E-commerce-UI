import 'package:flutter/material.dart';
import 'package:flutter_way/constants.dart';
import 'package:flutter_way/models/product.dart';

import 'package:flutter_way/screens/home/components/discount_banner.dart';
import 'package:flutter_way/screens/home/components/section_title.dart';

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
            SectionTitle(text: 'Popular Products', press: () {}),
            Column(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(140),
                  child: AspectRatio(
                    aspectRatio: 1.2,
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                      decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(demoProducts[0].images[0]),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
