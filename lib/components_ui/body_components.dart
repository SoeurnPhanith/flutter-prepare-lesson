import 'package:flutter/material.dart';
class Product {
  final String name;
  final String imageUrl;
  final double price;
  final int qty;

  Product({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.qty,
  });
}
final List<Product> products = [
  Product(
    name: "Apple",
    price: 2.5,
    qty: 10,
    imageUrl:
        "https://static.vecteezy.com/system/resources/previews/024/526/179/non_2x/apple-isolated-red-apple-on-transparent-background-with-full-depth-of-field-apple-png.png",
  ),
  Product(
    name: "Banana",
    price: 1.5,
    qty: 20,
    imageUrl:
        "https://static.vecteezy.com/system/resources/previews/048/086/057/non_2x/bunch-of-banana-fruits-peeled-cut-bananas-isolated-on-a-transparent-background-free-png.png",
  ),
  Product(
    name: "Orange",
    price: 3.0,
    qty: 15,
    imageUrl:
       "https://static.vecteezy.com/system/resources/previews/029/200/225/non_2x/oranges-on-transparent-background-free-png.png"
  ),
  Product(
    name: "Grapes",
    price: 4.0,
    qty: 12,
    imageUrl:
       "https://static.vecteezy.com/system/resources/thumbnails/027/125/716/small/grapes-isolated-on-transparent-background-grape-clip-art-generative-ai-png.png"
  ),
  Product(
    name: "Berry",
    price: 3.90,
    qty: 5,
    imageUrl:
       "https://static.vecteezy.com/system/resources/thumbnails/035/906/680/small/ai-generated-assorted-fresh-berries-on-transparent-background-free-png.png")
];

class BodyComponents extends StatelessWidget {
  const BodyComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fruit List'),),
      backgroundColor: Colors.grey.shade200,
      body: ListView.builder(
        itemCount: products.length,
        padding: const EdgeInsets.all(12),
        itemBuilder: (context, index) {
          final product = products[index];
          return ProductItem(product: product);
        },
      ),
    );
  }
}

// ProductItem Widget (reusable, safe UI)
class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          // Circular image
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(
              product.imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 15),

          // Product Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis, // safe overflow
                ),
                const SizedBox(height: 5),
                Text(
                  "\$${product.price}",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Qty: ${product.qty}",
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          // Add button
          IconButton(
            icon: const Icon(Icons.add_shopping_cart),
            color: Colors.deepPurple,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("${product.name} added to cart"),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
