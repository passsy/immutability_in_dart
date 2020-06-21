import 'package:immutability_in_dart/product.dart';

class ShopApi {
  Future<List<Product>> getAllProducts() async {
    await Future.delayed(const Duration(milliseconds: 400));
    return [
      Product(
        name: "Dash painting by Jessica @glossycoder",
        price: 1790,
        productImage:
            "https://scontent-dus1-1.cdninstagram.com/v/t51.2885-15/e35/82452598_520529955227794_4162879353105970080_n.jpg?_nc_ht=scontent-dus1-1.cdninstagram.com&_nc_cat=110&_nc_ohc=Ekudz5frTtUAX-UASoD&oh=c1370d1ecf3382104f0a2a56dd47797b&oe=5F19F184",
        featured: true,
      ),
      Product(
        name: "Dash in Egypt",
        price: 2090,
        productImage:
            "https://scontent-dus1-1.cdninstagram.com/v/t51.2885-15/e35/51962008_152497109084391_6292214590188710538_n.jpg?_nc_ht=scontent-dus1-1.cdninstagram.com&_nc_cat=103&_nc_ohc=p_FUQebyIOEAX9diSTs&oh=87572dbb19a2d6ea56d3b87ed4f4899d&oe=5F1B2F52",
        featured: false,
      ),
      Product(
        name: "Dash in Mexico",
        price: 1990,
        productImage:
            "https://scontent-dus1-1.cdninstagram.com/v/t51.2885-15/e35/42833505_532835310528933_7969599961682129755_n.jpg?_nc_ht=scontent-dus1-1.cdninstagram.com&_nc_cat=109&_nc_ohc=PD0v9WNkHWMAX_ETUkr&oh=c313bd956696be710e2db2516af348a0&oe=5F1A3D9A",
        featured: false,
      ),
      Product(
        name: "Happy Dart 2 launch",
        price: 1490,
        productImage:
            "https://scontent-dus1-1.cdninstagram.com/v/t51.2885-15/e35/37964522_243121822996521_899209969591648256_n.jpg?_nc_ht=scontent-dus1-1.cdninstagram.com&_nc_cat=109&_nc_ohc=I7bregq6eEgAX9jc2cr&oh=4d58294643c3ed3ed2d2e4dac549fabc&oe=5F19FF81",
        featured: false,
      ),
      Product(
        name: "Welcome to NY",
        price: 1290,
        productImage:
            "https://scontent-dus1-1.cdninstagram.com/v/t51.2885-15/e35/35999384_959919760846974_2718731422402609152_n.jpg?_nc_ht=scontent-dus1-1.cdninstagram.com&_nc_cat=106&_nc_ohc=dWu3coq_4dQAX8LkDPY&oh=63b15b4245c2e3895a41b2370d56f776&oe=5F1A2821",
        featured: true,
      ),
      Product(
        name: "Coffeinated Dash",
        price: 790,
        productImage:
            "https://scontent-dus1-1.cdninstagram.com/v/t51.2885-15/e35/30590613_652527658411771_3394792066868314112_n.jpg?_nc_ht=scontent-dus1-1.cdninstagram.com&_nc_cat=107&_nc_ohc=mJFmDFbyBKYAX_w9Dru&oh=570ee1da8def4f969dec1260c87b9b40&oe=5F19E719",
        featured: true,
      ),
    ];
  }
}
