import 'package:flutter/material.dart';
import 'package:flutter_application_1/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          const [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 77, 38, 132),
          ],
        ),
      ),
    ),
  );
}
