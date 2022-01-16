import 'package:Clock_app/clock.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.grey.withOpacity(0.2),
            child: Center(
              child: Clock(),
            )),
      ),
    );
  }
}
