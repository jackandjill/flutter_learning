import 'dart:async';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elegal_dart/models/items.dart';
import 'package:elegal_dart/services/api.dart';

class LostPage extends StatefulWidget {
  @override
  _LostPage createState() => new _LostPage();
}

class _LostPage extends State<LostPage> {
  List<Item> _items = [];

  @override
  void initState() {
    super.initState();
  }

  _loadLostItems() async {
    String fileData =
        await DefaultAssetBundle.of(context).loadString("assets/items.json");
    setState(() {
      _items = ItemApi.allItemsFromJson(fileData);
    });
  }

  Widget _buildLostItems(BuildContext context, int index) {
    Item item = _items[index];

    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
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
                                  item.item_DispPic),
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
                      alignment: FractionalOffset.topRight,
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
                    "MEGADISH",
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
    );
  }


  Widget _getAppTitleWidget() {
    return new Text(
      'Lost Items',
      style: new TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 32.0,
      ),
    );
  }

  Widget _buildBody() {
    return new Container(
      margin: const EdgeInsets.fromLTRB(
          8.0,  // A left margin of 8.0
          56.0, // A top margin of 56.0
          8.0,  // A right margin of 8.0
          0.0   // A bottom margin of 0.0
      ),
      child: new Column(
        // A column widget can have several
        // widgets that are placed in a top down fashion
        children: <Widget>[
          _getAppTitleWidget(),
          _getListViewWidget()
        ],
      ),
    );
  }

  Future<Null> refresh() {
    _loadLostItems();
    return new Future<Null>.value();
  }

  Widget _getListViewWidget() {
    return new Flexible(
        child: new RefreshIndicator(
            onRefresh: refresh,
            child: new ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: _items.length,
                itemBuilder: _buildLostItems
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue,
      body: _buildBody(),
    );
  }
}
