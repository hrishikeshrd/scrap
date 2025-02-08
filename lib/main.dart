import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(ScrapSellingApp());
}

class ScrapSellingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrap Selling Website',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}
