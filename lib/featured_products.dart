import 'package:flutter/material.dart';
import 'package:immutability_in_dart/product_grid.dart';
import 'package:immutability_in_dart/shop_model.dart';
import 'package:provider/provider.dart';

class FeaturedProducts extends StatelessWidget {
  static PageRoute<void> route() {
    return MaterialPageRoute(builder: (context) => FeaturedProducts());
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<ShopModel>();
    final products = model.products;
    products.removeWhere((it) => !it.featured);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Featured (${products.length})"),
      ),
      body: Builder(builder: (context) {
        if (model.isLoading) {
          return Center(child: CircularProgressIndicator());
        }
        return ProductGrid(products: products);
      }),
    );
  }
}
