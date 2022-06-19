import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pages/product_detail_page.dart';
import '../pages/products_overview_page.dart';
import '../providers/product_provider.dart';
import './app_routes.dart';

class ShopApp extends StatelessWidget {
  static const name = 'Loja Exemplo';

  const ShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductProvider(),
      child: MaterialApp(
          title: ShopApp.name,
          theme: ThemeData(
            primarySwatch: Colors.purple,
            colorScheme: ColorScheme.fromSwatch().copyWith(
              secondary: Colors.deepOrange,
            ),
            fontFamily: 'Lato',
          ),
          debugShowCheckedModeBanner: false,
          home: const ProductsOverviewPage(),
          routes: {
            AppRoutes.productDetail: (context) => const ProductDetailPage(),
          }),
    );
  }
}
