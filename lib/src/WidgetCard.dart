import 'package:flutter/material.dart';

class WidgetCard extends StatefulWidget {
  ///Main [Widget] inside the card
  final Widget widget;

  ///Background [Color] for card
  final Color color;

  //key
  final key;

  ///padding for the child widget
  final double widgetPadding;

  ///[elevation] for card
  final double elevation;
  WidgetCard(
      {required this.widget,
      this.elevation = 3,
      this.widgetPadding = 5,
      this.color = Colors.white,
      this.key});
  @override
  _CustomCardsState createState() => _CustomCardsState();
}

class _CustomCardsState extends State<WidgetCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: widget.elevation,
      key: widget.key,
      color: widget.color,
      child: Padding(
          padding: EdgeInsets.all(widget.widgetPadding), child: widget.widget),
    );
  }
}
