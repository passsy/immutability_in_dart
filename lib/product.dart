import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    @required String name,
    @required int price,
    @nullable String productImage,
    @required bool featured,
  }) = _ProductDataClass;
}

void main() {
  print("\nmanual copy:");
  final productA = Product(name: "Dash", price: 100, productImage: "todo", featured: true);
  final productACopy = Product(
      name: productA.name, price: productA.price, productImage: productA.productImage, featured: true /*changed*/);
  print(productA == productACopy);
  print("\ncopyWith:");
  final copy = productA.copyWith(productImage: null);
  print(copy == productA);
  print(copy.productImage);
}
