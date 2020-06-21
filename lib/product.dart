// main.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    @required String name,
    @required int price,
    @required String productImage,
    @required bool featured,
  }) = _ProductDataClass;
}
