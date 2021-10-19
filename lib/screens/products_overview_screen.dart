import 'package:ecom_app/widgets/product_gridview.dart';
import 'package:flutter/material.dart';

class ProductsOverView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ecom App'),
      ),
      body: ProductGridview(),
    );
  }
}
