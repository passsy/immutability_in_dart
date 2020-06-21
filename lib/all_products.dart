import 'package:flutter/material.dart';
import 'package:immutability_in_dart/product_grid.dart';
import 'package:immutability_in_dart/shop_model.dart';
import 'package:provider/provider.dart';

class AllProducts extends StatelessWidget {
  static PageRoute<void> route() {
    return MaterialPageRoute(builder: (context) => AllProducts());
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<ShopModel>();
    final products = model.products;

    return Scaffold(
      appBar: AppBar(
        title: Text("All Products (${products.length})"),
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
