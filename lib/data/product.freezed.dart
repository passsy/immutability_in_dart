// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProductTearOff {
  const _$ProductTearOff();

  _ProductDataClass call(
      {@required String name,
      @required int price,
      @nullable String imageUrl,
      @required bool featured}) {
    return _ProductDataClass(
      name: name,
      price: price,
      imageUrl: imageUrl,
      featured: featured,
    );
  }
}

// ignore: unused_element
const $Product = _$ProductTearOff();

mixin _$Product {
  String get name;
  int get price;
  @nullable
  String get imageUrl;
  bool get featured;

  $ProductCopyWith<Product> get copyWith;
}

abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call({String name, int price, @nullable String imageUrl, bool featured});
}

class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object name = freezed,
    Object price = freezed,
    Object imageUrl = freezed,
    Object featured = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      price: price == freezed ? _value.price : price as int,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      featured: featured == freezed ? _value.featured : featured as bool,
    ));
  }
}

abstract class _$ProductDataClassCopyWith<$Res>
    implements $ProductCopyWith<$Res> {
  factory _$ProductDataClassCopyWith(
          _ProductDataClass value, $Res Function(_ProductDataClass) then) =
      __$ProductDataClassCopyWithImpl<$Res>;
  @override
  $Res call({String name, int price, @nullable String imageUrl, bool featured});
}

class __$ProductDataClassCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductDataClassCopyWith<$Res> {
  __$ProductDataClassCopyWithImpl(
      _ProductDataClass _value, $Res Function(_ProductDataClass) _then)
      : super(_value, (v) => _then(v as _ProductDataClass));

  @override
  _ProductDataClass get _value => super._value as _ProductDataClass;

  @override
  $Res call({
    Object name = freezed,
    Object price = freezed,
    Object imageUrl = freezed,
    Object featured = freezed,
  }) {
    return _then(_ProductDataClass(
      name: name == freezed ? _value.name : name as String,
      price: price == freezed ? _value.price : price as int,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      featured: featured == freezed ? _value.featured : featured as bool,
    ));
  }
}

class _$_ProductDataClass implements _ProductDataClass {
  const _$_ProductDataClass(
      {@required this.name,
      @required this.price,
      @nullable this.imageUrl,
      @required this.featured})
      : assert(name != null),
        assert(price != null),
        assert(featured != null);

  @override
  final String name;
  @override
  final int price;
  @override
  @nullable
  final String imageUrl;
  @override
  final bool featured;

  @override
  String toString() {
    return 'Product(name: $name, price: $price, imageUrl: $imageUrl, featured: $featured)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductDataClass &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.featured, featured) ||
                const DeepCollectionEquality()
                    .equals(other.featured, featured)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(featured);

  @override
  _$ProductDataClassCopyWith<_ProductDataClass> get copyWith =>
      __$ProductDataClassCopyWithImpl<_ProductDataClass>(this, _$identity);
}

abstract class _ProductDataClass implements Product {
  const factory _ProductDataClass(
      {@required String name,
      @required int price,
      @nullable String imageUrl,
      @required bool featured}) = _$_ProductDataClass;

  @override
  String get name;
  @override
  int get price;
  @override
  @nullable
  String get imageUrl;
  @override
  bool get featured;
  @override
  _$ProductDataClassCopyWith<_ProductDataClass> get copyWith;
}
