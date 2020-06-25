import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    @required String name,
    @required int price,
    @nullable String imageUrl,
    @required bool featured,
  }) = _ProductDataClass;
}

void main() {
  final a = Product(name: "Dash", price: 100, imageUrl: "todo", featured: true);
  final b = a.copyWith(imageUrl: null);
  print(b);
}
