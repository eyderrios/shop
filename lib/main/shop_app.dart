import 'package:flutter/material.dart';

import '../pages/products_overview_page.dart';

class ShopApp extends StatelessWidget {
  static const name = 'Loja Exemplo';

  const ShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ShopApp.name,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: ProductsOverviewPage(),
    );
  }
}
