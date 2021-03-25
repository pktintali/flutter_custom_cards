import 'package:flutter/material.dart';

///[TextCard] that display text inside a card
class TextCard extends StatefulWidget {
  /// [String] that display text on screen
  final String text;

  ///Background [Color] for card
  final Color color;

  ///[Color] for the text
  final Color textColor;

  ///key
  final Key? key;

  ///[fontSize] of the [Text]
  final double fontSize;

  ///[shadow] color of the card
  final Color shadowColor;

  //padding for the child
  final double childPadding;

  ///[elevation] for card
  final double elevation;
  TextCard(
      {required this.text,
      this.elevation = 3,
      this.shadowColor = Colors.black,
      this.childPadding = 5,
      this.color = Colors.white,
      this.textColor = Colors.black,
      this.fontSize = 18.0,
      this.key});
  @override
  _CustomCardsState createState() => _CustomCardsState();
}

class _CustomCardsState extends State<TextCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: widget.elevation,
      key: widget.key,
      color: widget.color,
      shadowColor: widget.shadowColor,
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
