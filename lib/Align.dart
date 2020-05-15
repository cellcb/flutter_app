import 'package:flutter/material.dart';

class AlignRoute extends StatefulWidget {
  @override
  _AlignRouteState createState() => new _AlignRouteState();
}

class _AlignRouteState extends State<AlignRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Form Test"),
        ),
        body: Container(
//          height: 120.0,
//          width: 120.0,
          color: Colors.blue[50],
          child: Align(
            widthFactor: 2,
            heightFactor: 2,
            alignment: Alignment.topRight,
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ));
  }
}
