import 'package:flutter/cupertino.dart';
import 'package:immutability_in_dart/api.dart';
import 'package:immutability_in_dart/product.dart';

class ShopModel extends ChangeNotifier {
  ShopModel(this.api) {
    loadProducts();
  }

  final ShopApi api;

  List<Product> get products => _products ?? [];
  List<Product> _products;

  bool get isLoading => _products == null;

  Future<void> loadProducts() async {
    if (_products == null) {
      _products = await api.getAllProducts();
      print("loaded ${products.length} products");
      notifyListeners();
    }
  }
}
