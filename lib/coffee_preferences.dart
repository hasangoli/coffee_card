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
            SizedBox(
              width: 50,
            ),
          ],
        ),
        Row(
          children: [
            Text("Sugars: "),
            Text("3"),
            SizedBox(
              width: 50,
            ),
          ],
        ),
      ],
    );
  }
}
