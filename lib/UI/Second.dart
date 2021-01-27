import 'package:flutter/material.dart';
import 'package:flutter_navigation/Function/GlobalState.dart';
import 'package:flutter_navigation/UI/Third.dart';

class Second extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new SecondState();
  }

}

class SecondState extends State<Second>
{
  TextEditingController  _name;
  GlobalState  _store = GlobalState.instance;

  void initState () {
    _name =new TextEditingController();
  }
  onClickSendVariable()
  {
    Navigator.push(context, new MaterialPageRoute(builder: (BuildContext  conntext) => new Third(_name.text)));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepOrange,
        title: new Text(' Navigation '),
      ),
      body: new Container(
        padding: new EdgeInsets.all(23.0),
        child: new Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            new Text(' Second  Page '),
            new Text(" your variable is  ${_store.get('name')}"),
            new TextField(
              decoration: InputDecoration(labelText: ' enter name'),
              controller:  _name,
            ),
            new FlatButton(onPressed: onClickSendVariable,
                child: new Text(' Next Page ')),
            new FlatButton(
                onPressed: ()=> //Navigator.of(context).pop(),// return to the previous  page must (exist history)
                    Navigator.of(context).pushNamedAndRemoveUntil('/First', (route) => false),//if return to home and you need to obtain history
                   // Navigator.of(context).pushNamed('/First'), the sample back (exist history)
                child: new Text(' Back '))
          ],
        ),
      ),
    );
  }

}