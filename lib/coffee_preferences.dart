import 'package:flutter/material.dart';

class CoffeePreferences extends StatelessWidget {
  const CoffeePreferences({super.key});

  void increaseStrength() {
    print('inc strength by 1');
  }

  void increaseSugar() {
    print('inc sugar by 1');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Strength: "),
            Text("3"),
            Image.asset(
              'assets/images/coffee_bean.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increaseStrength,
              child: Text('+'),
            ),
          ],
        ),
        Row(
          children: [
            Text("Sugars: "),
            Text("3"),
            Image.asset(
              'assets/images/sugar_cube.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increaseSugar,
              child: Text('+'),
            ),
          ],
        ),
      ],
    );
  }
}
