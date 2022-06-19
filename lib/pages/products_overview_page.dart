import 'package:flutter/material.dart';
import 'package:shop/widgets/products_item.dart';

import '../data/database.dart';
import '../models/product.dart';
import '../widgets/products_item.dart';

class ProductsOverviewPage extends StatelessWidget {
  final List<Product> _products = Database.fetchData();

  ProductsOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loja Exemplo'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: _products.length,
        itemBuilder: (context, index) => ProductItem(product: _products[index]),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
      ),
    );
  }
}
