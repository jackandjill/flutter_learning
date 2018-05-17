import 'package:flutter/material.dart';




class Home extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
  return new Scaffold(
    appBar: new AppBar(title: new Text('Device Secure'),),
    body: new Center(
      child: new Container(
        child : new Column(
      children: <Widget>[
        new RaisedButton(
          child:  new Text("Click to Navigate"),
         // padding: new EdgeInsets.fromWindowPadding(30.0, devicePixelRatio),
          onPressed: () {Navigator.of(context).pushNamed('/Signin');}
        )


      ],
)    ))
  );
}
}