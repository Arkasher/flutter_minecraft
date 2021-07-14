import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  final String? text;
  final Widget? replace;
  final Function execute;
  final bool? fixed;
  final Color? color;

  ButtonWidget(
      {this.text,
      required this.execute,
      this.color,
      this.replace,
      this.fixed = true});

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blueGrey, borderRadius: BorderRadius.circular(10.0)),
      child: new FlatButton(
          child: Text(
            widget.text ?? "",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Colors.black, fontFamily: 'Minecraft'),
          ),
          onPressed: () => widget.execute()),
    );
  }
}
