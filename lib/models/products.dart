import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final id;
  final title;
  final description;
  final price;
  final imageUrl;
  var isFavarite;
  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.imageUrl,
    this.isFavarite = false,
  });

  void favoriteHandler() {
    isFavarite = !isFavarite;
    notifyListeners();
  }
}
