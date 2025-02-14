import 'package:flutter/material.dart';

class CoffeePreferences extends StatelessWidget {
  const CoffeePreferences({super.key});

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
            Text('+'),
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
            Text('+'),
          ],
        ),
      ],
    );
  }
}
