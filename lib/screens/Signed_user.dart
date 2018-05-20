import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(

  ));
}


class TabsView extends StatefulWidget {
  @override
  TabsState createState() => new TabsState();

}

class TabsState extends State<TabsView> with SingleTickerProviderStateMixin {

TabController controller;

@override
void initState()
{
  super.initState();
  controller = new TabController(vsync: this, length: 2, initialIndex: 0);
}

@override
void dispose() {
  controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }



  @override
  // TODO: implement widget
  Widget build(BuildContext context) {
    return new Container(


    child:  new Scaffold(
      backgroundColor: Colors.cyan,

      appBar: new AppBar(
        centerTitle: true,
        title: new Text(
          "Lost & Found",
          style: new TextStyle(
              fontFamily: "Exo",
            fontSize: 30.0,

          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: new IconButton(
            icon: new Icon (Icons.menu),
            onPressed: null
        ),
        bottom: new TabBar(
           controller: controller,
          tabs: <Tab>[           
            new Tab(text:"Lost"),
            new Tab(text:"Found"),
            ]
            )
          
        ),
    ));
  }
}