import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

class Product {
  final String name;
  final int price;
  final String productImage;
  bool featured;

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  Product({
    @required this.name,
    @required this.price,
    @required this.productImage,
    @required this.featured,
  });

  Product copyWith({
    String name,
    int price,
    String productImage,
    bool featured,
  }) {
    return new Product(
      name: name ?? this.name,
      price: price ?? this.price,
      productImage: productImage ?? this.productImage,
      featured: featured ?? this.featured,
    );
  }

  @override
  String toString() {
    return 'Product{name: $name, price: $price, productImage: $productImage, featured: $featured}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Product &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          price == other.price &&
          productImage == other.productImage &&
          featured == other.featured);

  @override
  int get hashCode => name.hashCode ^ price.hashCode ^ productImage.hashCode ^ featured.hashCode;

  factory Product.fromMap(Map<String, dynamic> map) {
    return new Product(
      name: map['name'] as String,
      price: map['price'] as int,
      productImage: map['productImage'] as String,
      featured: map['featured'] as bool,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'name': this.name,
      'price': this.price,
      'productImage': this.productImage,
      'featured': this.featured,
    } as Map<String, dynamic>;
  }

//</editor-fold>

}

void main() {
  final dash = Product(name: "Dash", price: 100, productImage: "todo", featured: false);
  final gopher = Product(name: "Gopher", price: 80, productImage: "todo", featured: false);

  final products = KtList.of(dash, gopher);
  final featured = featureBirds(products);
  print(featured);

  final shorterList = products.toMutableList()..remove(dash);
  print(products);

//  final productACopy =
//      ImmutableProduct(name: productA.name, price: productA.price, productImage: productA.productImage, featured: true);
//
//  print("(productA == productACopy) = ${productA == productACopy}");
//
//  print("\ncopyWith:");
//  final copy = productA.copyWith(productImage: null);
//  print(copy == productA);
//  print(copy.productImage);
}

KtList<Product> featureBirds(KtList<Product> products) {
  return products.map((product) {
    if (product.name == "Dash") {
      return product.copyWith(featured: true);
    }
    return product;
  }).toList();
}
