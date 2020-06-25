import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

class MyProduct {
  final String name;
  final int price;
  final String imageUrl;
  final bool featured;

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

    return MyProduct(
      name: name ?? this.name,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      featured: featured ?? this.featured,
    );
  }

  @override
  String toString() {
    return 'Product{name: $name, price: $price, imageUrl: $imageUrl, featured: $featured}';
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
}

void main() {
  final dash = MyProduct(name: "Dash", price: 100, imageUrl: "todo", featured: false);
  final dash2 = MyProduct(name: "Dash2", price: 100, imageUrl: "todo", featured: false);
  print(dash == dash2);
  print(dash);
  final gopher = MyProduct(name: "Gopher", price: 90, imageUrl: "todo", featured: false);

  final products = KtList.of(dash, gopher);
  final birdsAreFeatured = featureBirds(products);
  print(birdsAreFeatured);

  final mutableList = products.toMutableList()
    ..remove(dash)
    ..add(dash2);

  print(mutableList);
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
