import 'package:flutter/material.dart';
import 'package:immutability_in_dart/ui/product_grid.dart';
import 'package:immutability_in_dart/shop_model.dart';
import 'package:provider/provider.dart';
import 'package:kt_dart/kt.dart';

class FeaturedProducts extends StatelessWidget {
  static PageRoute<void> route() {
    return MaterialPageRoute(builder: (context) => FeaturedProducts());
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<ShopModel>();
    final onlyFeatured = model.products.filter((it) => !it.featured);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Featured (${onlyFeatured.size})"),
      ),
      body: Builder(builder: (context) {
        if (model.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        return ProductGrid(products: onlyFeatured.asList());
      }),
    );
  }
}
