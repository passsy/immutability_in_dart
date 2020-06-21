// main.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    String name,
    int price,
    @nullable String productImage,
    bool featured,
  }) = _ProductDataClass;
}
