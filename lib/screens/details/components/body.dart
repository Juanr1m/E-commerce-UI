import 'package:flutter/material.dart';

import 'package:flutter_way/models/product.dart';
import 'package:flutter_way/screens/details/components/product_description.dart';
import 'package:flutter_way/screens/details/components/top_rounded_rectangle.dart';
import 'package:flutter_way/screens/splash/components/body.dart';
import 'package:flutter_way/size_config.dart';

import 'color_dots.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedRectangle(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedRectangle(
                    color: Color(0xFFF6F7F9),
                    child: Column(
                      children: [
                        ColorDots(product: product),
                        TopRoundedRectangle(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: SizeConfig.screenWidth * 0.15,
                                  right: SizeConfig.screenWidth * 0.15,
                                  top: getProportionateScreenWidth(15),
                                  bottom: getProportionateScreenWidth(40)),
                              child: DefaultButton(
                                press: () {},
                                text: 'Add to Cart',
                              ),
                            ))
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
