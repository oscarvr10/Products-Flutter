import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  Products(this.products, {this.deleteProduct});

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                color: Theme.of(context).primaryColorLight,
                onPressed: () => Navigator
                        .pushNamed<bool>(
                            context, '/product/' + index.toString())
                        .then((bool value) {
                      if (value) {
                        deleteProduct(index);
                      }
                    }),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCards;
    if (products.length > 0) {
      productCards = ListView.builder(
          itemBuilder: _buildProductItem, itemCount: products.length);
    } else {
      productCards = Center(child: Text('No products found, please add one'));
      // In case it should not be return anything
      //productCards = Container();
    }

    return productCards;
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    return _buildProductList();
  }

  // @override
  // Widget build(BuildContext context) {
  //   return ListView(
  //     children: products
  //         .map((element) => Card(
  //               child: Column(
  //                 children: <Widget>[
  //                   Image.asset('assets/food.jpg'),
  //                   Text(element)
  //                 ],
  //               ),
  //             ))
  //         .toList(),
  //   );
  // }
}
