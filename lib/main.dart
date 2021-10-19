import 'package:ecom_app/screens/product_detail_screen.dart';
import 'package:ecom_app/screens/products_overview_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoadedProducts(),
      child: MaterialApp(
        title: 'Ecom app',
        theme: ThemeData(primarySwatch: Colors.blue, accentColor: Colors.amber),
        home: MyHomePage(title: 'ecom app'),
        routes: {
          ProductDetails.routeName: (context) => ProductDetails(),
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final title;
  MyHomePage({this.title});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ProductsOverView();
  }
}
