import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;

  //Here the method reference it's stored in addProduct property
  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.deepOrange,
      onPressed: () {
        addProduct({'title': 'Chocolate', 'image':'assets/food.jpg'});
      },
      child: Text('Add product'),
    );
  }
}
