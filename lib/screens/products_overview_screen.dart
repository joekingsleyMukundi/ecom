import 'package:ecom_app/data/products.dart';
import 'package:ecom_app/widgets/productItems.dart';
import 'package:flutter/material.dart';

class ProductsOverView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ecom App'),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: LoadedProducts().produc.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return ProductItems(
              imageUrl: LoadedProducts().produc[index].imageUrl,
              id: LoadedProducts().produc[index].id,
              title: LoadedProducts().produc[index].title,
            );
          }),
    );
  }
}
