import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:immutability_in_dart/data/product.dart';
import 'package:kt_dart/kt.dart';

class MyProduct {
  final String name;
  final int price;
  final String imageUrl;
  final bool featured;

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const MyProduct({
    @required this.name,
    @required this.price,
    @required this.imageUrl,
    @required this.featured,
  });

  MyProduct copyWith({
    String name,
    int price,
    String imageUrl,
    bool featured,
  }) {
    if ((name == null || identical(name, this.name)) &&
        (price == null || identical(price, this.price)) &&
        (imageUrl == null || identical(imageUrl, this.imageUrl)) &&
        (featured == null || identical(featured, this.featured))) {
      return this;
    }

    return new MyProduct(
      name: name ?? this.name,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      featured: featured ?? this.featured,
    );
  }

  @override
  String toString() {
    return 'MyProduct{name: $name, price: $price, imageUrl: $imageUrl, featured: $featured}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MyProduct &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          price == other.price &&
          imageUrl == other.imageUrl &&
          featured == other.featured);

  @override
  int get hashCode => name.hashCode ^ price.hashCode ^ imageUrl.hashCode ^ featured.hashCode;

  factory MyProduct.fromMap(Map<String, dynamic> map) {
    return new MyProduct(
      name: map['name'] as String,
      price: map['price'] as int,
      imageUrl: map['imageUrl'] as String,
      featured: map['featured'] as bool,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'name': this.name,
      'price': this.price,
      'imageUrl': this.imageUrl,
      'featured': this.featured,
    } as Map<String, dynamic>;
  }

//</editor-fold>

}

void main() {
  final a = MyProduct(name: "Dash", price: 100, imageUrl: "todo", featured: true);
  final b = a.copyWith(imageUrl: null);
  print(b);

  final dash = MyProduct(name: "Dash", price: 100, imageUrl: "todo", featured: false);
  final gopher = MyProduct(name: "Gopher", price: 100, imageUrl: "todo", featured: false);

  final products = KtList.of(dash, gopher);
  final features = featureBirds(products);
  print(features);

  final mutable = products.toMutableList()..remove(dash);
  print(products);
}

KtList<MyProduct> featureBirds(KtList<MyProduct> products) {
  return products.map((product) {
    if (product.name.toLowerCase().contains("dash")) {
      return product.copyWith(featured: true);
    }
    return product;
  });
}
