import 'package:coffee_card/coffee_preferences.dart';
import 'package:coffee_card/styled_body_text.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Coffee Id',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            decoration: BoxDecoration(
              color: Colors.brown[200],
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: StyledBodyText("How I like my coffee..."),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            decoration: BoxDecoration(
              color: Colors.brown[100],
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: CoffeePreferences(),
          ),
          Expanded(
            child: Image.asset(
              'assets/images/coffee_bg.jpg',
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}
