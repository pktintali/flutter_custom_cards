import 'package:flutter/material.dart';

class CustomCards extends StatefulWidget {
  final String text;
  final Color color;
  final Color textColor;
  final key;
  final double fontSize;
  final double childPadding;
  final double elevation;
  CustomCards(
      {@required this.text,
      this.elevation=3,
      this.childPadding = 5,
      this.color = Colors.white,
      this.textColor = Colors.black,
      this.fontSize = 18.0,
      this.key});
  @override
  _CustomCardsState createState() => _CustomCardsState();
}

class _CustomCardsState extends State<CustomCards> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: widget.elevation,
      key: widget.key,
      color: widget.color,
      child: Padding(
        padding: EdgeInsets.all(widget.childPadding),
        child: Text(
          widget.text,
          style: TextStyle(
            color: widget.textColor,
            fontSize: widget.fontSize,
          ),
        ),
      ),
    );
  }
}
