import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/item_screen.dart';

void main() {
  runApp(ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: HomeScreen(),
      routes: {
        '/cart': (context) => CartScreen(),
        '/details': (context) => ItemDetailScreen(),
      },
    );
  }
}