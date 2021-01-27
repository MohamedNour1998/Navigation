import 'package:flutter/material.dart';
import 'package:flutter_navigation/Function/GlobalState.dart';

class First extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new FirstState();
  }

}

class FirstState extends State<First>
{

  TextEditingController  _name;
  GlobalState  _store = GlobalState.instance;
  @override
  void initState () {
    _name =new TextEditingController();
    _store.set(' name', ' ');
    _name.text =_store.get('name');
  }

  void onClickBtn()
  {
    _store.set('name', _name.text);
         Navigator.of(context).pushNamed('/Second' );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white70,
        title: new Text(' Navigation '),
      ),
      body: new Container(
        padding: new EdgeInsets.all(23.0),
        child: new Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            new Text(' First Page '),
            new TextField(
              decoration: InputDecoration(labelText: ' enter name'),
              controller:  _name,
            ),
            new FlatButton(onPressed: onClickBtn,
                child: new Text(' Next Page ')),
            new FlatButton(onPressed: ()=> Navigator.of(context).pushNamed('/Third' ),
                child: new Text(' third Page ')),
          ],
        ),
      ),
    );
  }

}