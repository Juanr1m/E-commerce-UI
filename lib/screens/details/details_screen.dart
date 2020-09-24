import 'package:flutter/material.dart';

import 'package:flutter_way/models/product.dart';

import 'components/body.dart';
import 'components/custom_appbar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArgument arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(arguments.product.rating),
      body: Body(product: arguments.product),
    );
  }
}

class ProductDetailsArgument {
  final Product product;

  ProductDetailsArgument(@required this.product);
}
