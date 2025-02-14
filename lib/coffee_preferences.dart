import 'package:coffee_card/styled_body_text.dart';
import 'package:coffee_card/styled_button.dart';
import 'package:flutter/material.dart';

class CoffeePreferences extends StatefulWidget {
  const CoffeePreferences({super.key});

  @override
  State<CoffeePreferences> createState() => _CoffeePreferencesState();
}

class _CoffeePreferencesState extends State<CoffeePreferences> {
  int strength = 1;
  int sugars = 1;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increaseSugar() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            StyledBodyText("Strength: "),
            for (int i = 0; i < strength; i++)
              Image.asset(
                'assets/images/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox()),
            StyledButton(
              onPressed: increaseStrength,
              child: Text('+'),
            ),
          ],
        ),
        Row(
          children: [
            StyledBodyText("Sugars: "),
            if (sugars == 0) Text("No sugars"),
            for (int i = 0; i < sugars; i++)
              Image.asset(
                'assets/images/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox()),
            StyledButton(
              onPressed: increaseSugar,
              child: Text('+'),
            ),
          ],
        ),
      ],
    );
  }
}
