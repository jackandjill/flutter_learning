import 'package:flutter/material.dart';



class NewItemCreate extends StatefulWidget{

  @override
  NewItemCreateState createState() => new NewItemCreateState();
}

class NewItemCreateState extends State<NewItemCreate>
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: new AppBar(
          title: new Text("Report"),
          elevation: 5.0,
          actions: <Widget>[
            new Icon(
              Icons.arrow_back,

            )
          ],
        ),
      body:
      Container(

        padding: new EdgeInsets.fromLTRB(8.0,10.0,0.0,0.0),

        child: Column(

          children: <Widget>[
         Text(
        "NEW",
          textScaleFactor: 0.5,
        ),
          ],
        )
      )


      /*
      GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2, //number of columns
        children: <Widget>[
          Card(
            child: Column(
              // mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.height / 2.5,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://i.imgur.com/FtaGNck.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: FractionalOffset.topLeft,
                          child: CircleAvatar(
                            backgroundColor: Colors.redAccent,
                            radius: 15.0,
                            child: Text(
                              "NEW",
                              textScaleFactor: 0.5,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: FractionalOffset.bottomRight,
                        child: Container(
                          color: Colors.blueAccent,
                          height: 35.0,
                          width: 35.0,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.account_circle),
                                Text(
                                  "1P",
                                  textScaleFactor: 0.5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: FractionalOffset.bottomCenter,
                    child: Text(
                      "AWESOME DISH",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FlatButton(
                      child: Text(
                        "Add To Cart",
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                      onPressed: () => null,
                    ),
                    Text(
                      "\$5",
                      style: TextStyle(color: Colors.grey[500]),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ), */
    );



  }
}

Widget _buildNewItem ()
{
   return new Container(
    padding: const EdgeInsets.all(8.0),
    child:
    new Column (
     children: <Widget>[
       new Text("test"),
     ],
    )
  );
}