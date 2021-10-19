import 'package:ecom_app/models/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';
import './productItems.dart';

class ProductGridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var prodsData = Provider.of<LoadedProducts>(context);
    var prods = prodsData.produc as List<Product>;
    return GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: LoadedProducts().produc.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return ChangeNotifierProvider(
            create: (context) => prods[index],
            child: ProductItems(),
          );
        });
  }
}
