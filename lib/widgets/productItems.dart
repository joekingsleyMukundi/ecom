import 'package:ecom_app/models/products.dart';
import 'package:ecom_app/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductItems extends StatelessWidget {
  final id;
  final imageUrl;
  final title;
  ProductItems({this.id, this.imageUrl, this.title});
  @override
  Widget build(BuildContext context) {
    var productData = Provider.of<Product>(context);
    return GridTile(
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .pushNamed(ProductDetails.routeName, arguments: productData.id);
        },
        splashColor: Colors.amber,
        child: Image.network(
          productData.imageUrl,
          fit: BoxFit.cover,
        ),
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        leading: IconButton(
          icon: Icon(
            productData.isFavarite
                ? Icons.favorite
                : Icons.favorite_outline_sharp,
            color: Theme.of(context).accentColor,
          ),
          onPressed: () => productData.favoriteHandler(),
        ),
        title: Text(productData.title),
        trailing:
            Icon(Icons.add_shopping_cart, color: Theme.of(context).accentColor),
      ),
    );
  }
}
