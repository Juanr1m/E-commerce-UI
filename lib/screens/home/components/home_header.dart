import 'package:flutter/material.dart';
import 'package:flutter_way/screens/home/components/search_filter.dart';

import '../../../size_config.dart';
import 'icon_button_with_count.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchFilter(),
          IconBtnWithCounter(
            svgSrc: 'assets/icons/Cart Icon.svg',
            press: () {},
            numOfItems: 0,
          ),
          IconBtnWithCounter(
            svgSrc: 'assets/icons/Bell.svg',
            press: () {},
            numOfItems: 3,
          ),
        ],
      ),
    );
  }
}
