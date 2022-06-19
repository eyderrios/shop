import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';

import './dummy_data.dart';

class ProductProvider extends ChangeNotifier {
  final List<Product> _items = dummyData;

  List<Product> fetchProducts() => List<Product>.from(_items);

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
