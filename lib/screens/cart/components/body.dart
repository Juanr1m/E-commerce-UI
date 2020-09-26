import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:flutter_way/models/Cart.dart';

import 'package:flutter_way/size_config.dart';

import 'cart_item_cart.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoCards.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
            onDismissed: (direction) {
              setState(() {
                demoCards.removeAt(index);
              });
            },
            key: Key(demoCards[index].product.id.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Spacer(),
                  SvgPicture.asset('assets/icons/Trash.svg'),
                ],
              ),
            ),
            child: CartItemCard(
              cart: demoCards[index],
            ),
          ),
        ),
      ),
    );
  }
}
