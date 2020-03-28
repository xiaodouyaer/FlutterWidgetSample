import 'package:flutter/material.dart';

class IconAndText extends StatefulWidget {
  final IconData icon;
  final String text;

  IconAndText(this.icon, this.text);

  @override
  State<StatefulWidget> createState() {
    return CustomIconState(icon, text);
  }
}

class CustomIconState extends State {
  bool _active = false;

  final IconData icon;
  final String text;

  CustomIconState(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(3.0),
              boxShadow: [
                //阴影
                BoxShadow(
                    color: _active ? Colors.black38 : Colors.black26,
                    offset: _active ? Offset(4.0, 4.0) : Offset(2.0, 2.0),
                    blurRadius: 4.0)
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
                child: Icon(icon),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
                child: Text(text),
              )
            ],
          ),
        ),
      ),
      onTapDown: _tapDown,
      onTapUp: _tapUp,
    );
  }

  void _tapDown(TapDownDetails details) {
    setState(() {
      _active = true;
    });
  }

  void _tapUp(TapUpDetails details) {
    setState(() {
      _active = false;
    });
  }
}
