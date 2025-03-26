import 'package:flutter/material.dart';
import 'ui.dart';

void main() {
  runApp(ConvertisseurApp());
}

class ConvertisseurApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ConvertisseurPage(),
    );
  }
}