import 'package:flutter/material.dart';


class LandingPage extends StatelessWidget{
 
@override
Widget build(BuildContext context) {
  return new Scaffold(
    body: new Stack(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage("assets/images/download.jpg"), fit: BoxFit.cover,),
          ),
        ),
        new Center(
          child: new Text("Hello LandingPage"),
        )
      ],
    )
  );
}
}