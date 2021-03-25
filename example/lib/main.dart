import 'package:flutter/material.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter_Custom_Cards Demo',
      title: 'Custom Card Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CustomCardsExample(),
    );
  }
}

class CustomCardsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          // 'Flutter_Custom_Cards Example',
          'Custom Card Example',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('TextCards'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //TextCard Exmple
                TextCard(
                  text: 'Card1',
                  childPadding: 12,
                  fontSize: 28,
                ),
                TextCard(
                  text: 'Card2',
                  childPadding: 12,
                  fontSize: 28,
                  color: Colors.green,
                  textColor: Colors.white,
                ),
                TextCard(
                  text: 'Card3',
                  childPadding: 12,
                  fontSize: 28,
                  color: Colors.red,
                  textColor: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text('ImageCards'),
            Row(
              children: [
                //ImageCard Example
                ImageCard(
                  elevation: 12,
                  childPadding: 10,
                  shadowColor: Colors.green,
                  image: Image.network(
                    'https://miro.medium.com/max/85/1*ilC2Aqp5sZd1wi0CopD1Hw.png',
                  ),
                ),
                ImageCard(
                  elevation: 8,
                  shadowColor: Colors.red,
                  childPadding: 10,
                  color: Colors.yellow,
                  image: Image.network(
                    'https://miro.medium.com/max/85/1*ilC2Aqp5sZd1wi0CopD1Hw.png',
                  ),
                ),
                ImageCard(
                  elevation: 6,
                  childPadding: 10,
                  color: Colors.purple,
                  image: Image.network(
                    'https://miro.medium.com/max/85/1*ilC2Aqp5sZd1wi0CopD1Hw.png',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text('Widget Card'),
            WidgetCard(
              widget: Column(
                children: [
                  Image.network(
                      'https://miro.medium.com/max/85/1*ilC2Aqp5sZd1wi0CopD1Hw.png'),
                  Text('Widget Card Example'),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Button'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
