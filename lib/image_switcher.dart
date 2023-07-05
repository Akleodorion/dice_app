import 'package:flutter/material.dart';
import 'dart:math';

final _random = Random();

class ImageSwitcher extends StatefulWidget {
  const ImageSwitcher({super.key});
  @override
  State<ImageSwitcher> createState() => _ImageSwitcherState();
}

class _ImageSwitcherState extends State<ImageSwitcher> {
  var currentValue = 1;

  void rollDice() {

    setState(() {
      currentValue = _random.nextInt(6) +1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-$currentValue.png',
            height: 200,
          ),
          TextButton(
            onPressed: rollDice,
            child: const Text(
              'Roll Dice',
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
          )
        ],
      ),);
  }
}
