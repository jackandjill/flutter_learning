import 'package:flutter/material.dart';
import './Found.dart' as Found;
import './Lost.dart' as Lost;


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
  void initState() {
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
    return new Scaffold(
          backgroundColor: Colors.cyan,

          appBar: new AppBar(
              centerTitle: true,
              title: new Text(
                "LF",
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
                    new Tab(text: "L"),
                    new Tab(text: "F"),
                  ]
              )

          ),
          body: new TabBarView
            (controller: controller,
            children: <Widget>[
              new Lost.LostPage(),
              new Found.FoundPage(),


            ],

          ),

        )


    ;
  }
}
