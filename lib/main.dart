import 'package:flutter/material.dart';
import 'package:flutterapp/MyHomePage.dart';
import 'package:flutterapp/padding.dart';

import 'Align.dart';
import 'CustomScrollViewTestRoute.dart';
import 'Flex.dart';
import 'FormTest.dart';
import 'RowColumn.dart';
import 'ScaffoldRoute.dart';
import 'StackPositioned.dart';
import 'TapboxA.dart';
import 'TapboxB.dart';
import 'TapboxC.dart';
import 'WrapFlow.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(primarySwatch: Colors.blue),
        home: new MyHomePage(title: 'Demo'),
//        home: Scaffold(
//          appBar: AppBar(
//            title: Text("子树中获取State对象"),
//          ),
//          body: Center(
//            child: Builder(builder: (context) {
//              return RaisedButton(
//                onPressed: () {
//                  // 查找父级最近的Scaffold对应的ScaffoldState对象
////                  ScaffoldState _state = context.findAncestorStateOfType<ScaffoldState>();
//                  ScaffoldState _state=Scaffold.of(context);
//
//                  //调用ScaffoldState的showSnackBar来弹出SnackBar
//                  _state.showSnackBar(
//                    SnackBar(
//                      content: Text("我是SnackBa1r"),
//                    ),
//                  );
//                },
//                child: Text("显示SnackBar"),
//              );
//            }),
//          ),
//        ),
        routes: {
          "new_page": (context) => FormTestRoute(),
          "row_column": (context) => RowColumnRoute(),
          "flex": (context) => FlexRoute(),
          "wrap_flow": (context) => WrapFlowRoute(),
          "stack_positioned": (context) => StackPositionedRoute(),
          "align": (context) => AlignRoute(),
          "padding": (context) => PaddingRoute(),
          "scaffold": (context) => ScaffoldRoute(),
          "customscrollview": (context) => CustomScrollViewTestRoute(),
//          "new_page": (context) => NewRoute(),
//          "/":(context) => MyHomePage(title: 'Flutter Demo Home Page xxxx'), //注册首页路由
        });
  }
}
