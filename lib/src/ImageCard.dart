import 'package:flutter/material.dart';

class ImageCard extends StatefulWidget {
  ///Main [Image] for the card
  final Image image;

  ///Background [Color]
  final Color color;

  ///[shadow] color of the card
  final Color shadowColor;

  //key
  final key;

  //padding for the child
  final double childPadding;

  ///[elevation] for card
  final double elevation;
  ImageCard(
      {@required this.image,
      this.elevation = 3,
      this.shadowColor = Colors.black,
      this.childPadding = 5,
      this.color = Colors.white,
      this.key});
  @override
  _CustomCardsState createState() => _CustomCardsState();
}

class _CustomCardsState extends State<ImageCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: widget.shadowColor,
      elevation: widget.elevation,
      key: widget.key,
      color: widget.color,
      child: Padding(
        padding: EdgeInsets.all(widget.childPadding),
        child: widget.image,
      ),
    );
  }
}
