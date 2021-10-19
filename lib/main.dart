import 'package:ecom_app/screens/products_overview_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecom app',
      theme: ThemeData(primarySwatch: Colors.blue, accentColor: Colors.amber),
      home: MyHomePage(title: 'ecom app'),
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
