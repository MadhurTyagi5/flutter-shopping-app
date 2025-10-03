import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'name': 'Shoes',
      'price': 1200,
      'imagePath': 'lib/assets/images/shoes.jpg',
    },
    {
      'name': 'Watch',
      'price': 2500,
      'imagePath': 'lib/assets/images/watch.jpg',
    },
    {
      'name': 'Headphones',
      'price': 1800,
      'imagePath': 'lib/assets/images/headphones.jpg',
    },
    {
      'name': 'Backpack',
      'price': 1500,
      'imagePath': 'lib/assets/images/backpack.jpg',
    },
    {
      'name': 'Sunglasses',
      'price': 900,
      'imagePath': 'lib/assets/images/sunglasses.jpg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping App'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  item['imagePath'],
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(item['name']),
              subtitle: Text('₹${item['price']}'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, '/details', arguments: item);
              },
            ),
          );
        },
      ),
    );
  }
}
