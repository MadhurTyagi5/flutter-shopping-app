import 'package:flutter/material.dart';
import '../cart_manager.dart';

class ItemDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(title: Text(item['name'])),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              item['imagePath'],
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text('₹${item['price']}', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                CartManager.addItem(item);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${item['name']} added to cart')),
                );
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}