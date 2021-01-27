import 'package:flutter/material.dart';

class Third extends StatefulWidget{
  Third(this.name);
  String name;
  @override
  State<StatefulWidget> createState() {
    return new ThirdState(name);
  }

}

class ThirdState extends State<Third>
{
  ThirdState(this.name);
  String name;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: new Text(' Navigation '),
      ),
      body: new Container(
        padding: new EdgeInsets.all(23.0),
        child: new Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            new Text(' Third Page '),
            new Text('your name $name' , style: TextStyle(fontSize: 33.0),),
            new FlatButton(onPressed:(){
                if(Navigator.of(context).canPop())//use that because we use pushNamedAndRemoveUntil and the history is deleted so that we use this condition
                  {
                    Navigator.of(context).pop();
                  }
                else
                  {
                    Navigator.of(context).pushNamed('/Second' );
                  }
                },
                child: new Text(' Back ')),
          ],
        ),
      ),
    );
  }

}