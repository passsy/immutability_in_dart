import 'package:flutter/material.dart';
import 'package:immutability_in_dart/featured_products.dart';
import 'package:immutability_in_dart/shop_model.dart';
import 'package:immutability_in_dart/api.dart';
import 'package:immutability_in_dart/all_products.dart';
import 'package:provider/provider.dart';

class ShoppingListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ShopModel(ShopApi()),
      builder: (context, _) {
        return MaterialApp(
          title: "ShoppingCart App",
          home: HomePage(),
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dash Store"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(minWidth: double.infinity),
        child: Column(
          children: [
            RaisedButton(
              child: Text("Best Sellers"),
              onPressed: () {
                Navigator.of(context).push(FeaturedProducts.route());
              },
            ),
            RaisedButton(
              child: Text("View All Products"),
              onPressed: () {
                Navigator.of(context).push(AllProducts.route());
              },
            ),
          ],
        ),
      ),
    );
  }
}
