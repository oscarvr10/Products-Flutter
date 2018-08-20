import 'package:flutter/material.dart';
import './pages/products.dart';

void main() => runApp(ProductsFlutter());

class ProductsFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.deepPurple,
            accentColor: Colors.orange),
        home: ProductsPage());
  }
}