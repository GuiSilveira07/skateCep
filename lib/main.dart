import 'package:flutter/material.dart';
import 'package:skateboarding/features/images.dart';
import 'features/https.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Images(),
    );
  }
}
