import 'package:flutter/cupertino.dart';
import 'package:immutability_in_dart/api/shop_api.dart';
import 'package:immutability_in_dart/data/product.dart';
import 'package:kt_dart/kt.dart';

class ShopModel extends ChangeNotifier {
  ShopModel(this.api) {
    loadProducts();
  }

  final ShopApi api;

  KtList<Product> get products => _products ?? KtList.empty();
  KtList<Product> _products;

  bool get isLoading => _products == null;

  Future<void> loadProducts() async {
    if (_products == null) {
      _products = (await api.getAllProducts()).toImmutableList();
      print("loaded ${products.size} products");
      notifyListeners();
    }
  }
}
