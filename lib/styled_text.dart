import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text; // `final` ensures the value is immutable

  const StyledText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text, // Display the provided text
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
