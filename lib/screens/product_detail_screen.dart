import 'package:ecom_app/providers/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatelessWidget {
  static final routeName = '/productDetail';
  @override
  Widget build(BuildContext context) {
    var id = ModalRoute.of(context)?.settings.arguments;
    var productData = Provider.of<LoadedProducts>(context, listen: false);
    var product = productData.getElement(id);
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Center(
        child: Text('data'),
      ),
    );
  }
}
