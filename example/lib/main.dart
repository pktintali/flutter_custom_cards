import 'package:flutter/material.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter_Custom_Cards Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CustomCardsExample(),
    );
  }
}

class CustomCardsExample extends StatefulWidget {
  @override
  _CustomCardsExampleState createState() => _CustomCardsExampleState();
}

class _CustomCardsExampleState extends State<CustomCardsExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter_Custom_Cards Example'),
      ),
      body: Column(
        children: [
          //Just  Call CustomCards Widget
          CustomCards(
            text: 'Card1',
            childPadding: 12,
            fontSize: 28,
          ),

          CustomCards(
            text: 'Card2',
            childPadding: 12,
            fontSize: 28,
            color: Colors.green,
            textColor: Colors.white,
          ),

          CustomCards(
            text: 'Card3',
            childPadding: 12,
            fontSize: 28,
            color: Colors.blue,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
