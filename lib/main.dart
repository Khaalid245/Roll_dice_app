import "package:flutter/material.dart";
import 'package:my_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer( 
         Color.fromARGB(255, 52, 9, 126),
         Color.fromARGB(255, 92, 0, 250),
        
        ),
      ),
    ),
  );
}

