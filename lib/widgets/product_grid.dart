import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/product_list.dart';
import 'products_item.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);
    final products = provider.fetchProducts();

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (context, index) => ProductItem(product: products[index]),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
    );
  }
}
