import 'package:flutter/material.dart';
import 'package:fuudiui/models/product_entry.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: ${product.fields.name}",
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Text("Description: ${product.fields.description}",
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            Text("Price: ${product.fields.price}",
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            Text("User ID: ${product.fields.user}",
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Lihat Produk Lain'),
            ),
          ],
        ),
      ),
    );
  }
}
