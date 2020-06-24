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
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        final product = products[index];
        Widget image = Padding(
          padding: EdgeInsets.only(bottom: 48),
          child: Stack(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(minWidth: double.infinity),
                child: Image.network(
                  product.productImage,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 4,
                right: 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.black54,
                  ),
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "${(product.price / 100).toStringAsFixed(2)} €",
                    style: TextStyle(
                      color: product.featured ? Colors.lightBlueAccent : Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
        if (product.featured) {
          image = Banner(
            message: "Featured",
            location: BannerLocation.topEnd,
            color: Colors.lightBlueAccent,
            textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10),
            child: image,
          );
        }
        return Card(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              children: [
                image,
                Positioned(
                  bottom: 0,
                  left: 8,
                  right: 8,
                  child: SizedBox(
                    height: 42,
                    child: Text(product.name),
                  ),
                ),
                Positioned.fill(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(100),
                      highlightColor: Colors.blue.withAlpha(30),
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: products.length,
    );
  }
}
