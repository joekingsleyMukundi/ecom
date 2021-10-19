import 'package:flutter/material.dart';

class ProductItems extends StatelessWidget {
  final id;
  final imageUrl;
  final title;
  ProductItems({this.id, this.imageUrl, this.title});
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        leading: Icon(
          Icons.favorite_outline_sharp,
          color: Theme.of(context).accentColor,
        ),
        title: Text(title),
        trailing:
            Icon(Icons.add_shopping_cart, color: Theme.of(context).accentColor),
      ),
    );
  }
}
