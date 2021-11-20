import 'package:flutter/material.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CustomCards',
      debugShowCheckedModeBanner: false,
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
        title: Text('Custom Cards Example'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('CustomCards'),
              Center(
                child: Wrap(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomCard(
                      height: 50,
                      child: FlutterLogo(
                        style: FlutterLogoStyle.horizontal,
                        size: 90,
                      ),
                    ),
                    CustomCard(
                      height: 50,
                      width: 100,
                      elevation: 6,
                      childPadding: 10,
                      color: Colors.green,
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'Flutter',
                          style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    CustomCard(
                      height: 50,
                      width: 100,
                      borderRadius: 10,
                      color: Colors.red,
                      hoverColor: Colors.indigo,
                      splashColor: Colors.white,
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'Flutter',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Wrap(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCard(
                    height: 100,
                    width: 100,
                    elevation: 5,
                  ),
                  CustomCard(
                    height: 100,
                    width: 100,
                    elevation: 5,
                    borderRadius: 50,
                    color: Colors.green,
                    hoverColor: Colors.yellow,
                    onTap: () {},
                  ),
                  CustomCard(
                    height: 100,
                    width: 100,
                    elevation: 5,
                    color: Colors.blue,
                    borderColor: Colors.white,
                    borderWidth: 2,
                  ),
                ],
              ),
              SizedBox(height: 25),
              Text('Custom3DCards'),
              Wrap(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Custom3DCard(
                      elevation: 4,
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Center(
                          child: FlutterLogo(size: 65),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Custom3DCard(
                      elevation: 10,
                      shadowSpread: 5,
                      shadowColor: Colors.brown.shade400,
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Center(
                          child: FlutterLogo(
                            size: 65,
                            style: FlutterLogoStyle.stacked,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
