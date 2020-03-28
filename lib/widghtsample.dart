import 'package:flutter/material.dart';
import 'package:flutterapp/customIcon.dart';

class Widgets extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WidgetsState();
  }
}

class WidgetsState extends State<Widgets> {
  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: EdgeInsets.symmetric(vertical: 0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6, childAspectRatio: 1.0),
        children: <Widget>[
          IconAndText(Icons.ac_unit, "第一",),
          IconAndText(Icons.airport_shuttle, "第二"),
          IconAndText(Icons.all_inclusive, "第三"),
          IconAndText(Icons.beach_access, "第四"),
          IconAndText(Icons.cake, "第五"),
          IconAndText(Icons.free_breakfast, "第六")
        ]);
  }
}
