import 'package:flutter/material.dart';

class StackPositionedRoute extends StatefulWidget {
  @override
  _StackPositionedRouteState createState() => new _StackPositionedRouteState();
}

class _StackPositionedRouteState extends State<StackPositionedRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Form Test"),
        ),
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: Alignment.center, //指定未定位或部分定位widget的对齐方式
            fit: StackFit.expand, //未定位widget占满Stack整个空间
            children: <Widget>[
//              Container(
//                child:
//                    Text("Hello world", style: TextStyle(color: Colors.white)),
//                color: Colors.red,
//              ),
//              Positioned(
//                left: 18.0,
//                child: Text("I am Jack"),
//              ),
//              Positioned(
//                top: 18.0,
//                child: Text("Your friend"),
//              ),
              Positioned(
                left: 18.0,
                child: Text("I am Jack"),
              ),
              Container(
                child:
                    Text("Hello world", style: TextStyle(color: Colors.white)),
                color: Colors.red,
              ),
              Positioned(
                top: 18.0,
                child: Text("Your friend"),
              )
            ],
          ),
        ));
  }
}
