import 'dart:math'; // Import for random number generation
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png'; // Initial dice image

  final randomGenerator = Random(); // Create a random number generator

  void rollDice() {
    setState(() {
      int diceNumber = randomGenerator.nextInt(6) + 1; // Generate number from 1-6
      activeDiceImage = 'assets/images/dice-$diceNumber.png'; // Change dice image dynamically
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        TextButton(
          onPressed: rollDice, // Call the fixed function
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'), // Fixed spelling of "Roll"
        )
      ],
    );
  }
}
