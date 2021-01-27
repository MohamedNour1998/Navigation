import 'package:flutter/material.dart';
import 'package:flutter_navigation/UI/First.dart';
import 'package:flutter_navigation/UI/Second.dart';
import 'package:flutter_navigation/UI/Third.dart';

void main ()
{
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TextEditingController  _name;
    return new MaterialApp(
      title: 'navigation Main',
      routes: < String , WidgetBuilder>{
        '/First' : (BuildContext  context)=> new First(),
        '/Second' : (BuildContext  context)=> new Second(),
        '/Third' : (BuildContext  context)=> new Third('test'),
      },
      home: new First(),
    );
  }

}