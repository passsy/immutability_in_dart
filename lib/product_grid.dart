import 'package:flutter/material.dart';
import 'package:immutability_in_dart/product.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    Key key,
    @required this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        final product = products[index];
        return Card(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 48),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: double.infinity),
                  child: Image.network(
                    product.productImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 8,
                right: 8,
                child: SizedBox(
                  height: 42,
                  child: Text(product.name),
                ),
              ),
            ],
          ),
        );
      },
      itemCount: products.length,
    );
  }
}
