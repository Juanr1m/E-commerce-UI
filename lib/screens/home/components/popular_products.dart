import 'package:flutter/material.dart';
import 'package:flutter_way/components/product_card.dart';
import 'package:flutter_way/models/product.dart';
import 'package:flutter_way/screens/details/details_screen.dart';
import 'package:flutter_way/screens/home/components/section_title.dart';

import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: 'Popular Products', press: () {}),
        SizedBox(height: getProportionateScreenHeight(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(demoProducts.length, (index) {
                if (demoProducts[index].isPopular) {
                  return ProductCard(
                    product: demoProducts[index],
                    press: () => Navigator.pushNamed(
                        context, DetailsScreen.routeName,
                        arguments: ProductDetailsArgument(demoProducts[index])),
                  );
                }
                return SizedBox.shrink();
              }),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
