import 'dart:convert';
import 'package:elegal_dart/models/items.dart';

class ItemApi {
  static List<Item> allItemsFromJson(String jsonData) {
    List<Item> Items = [];
    json.decode(jsonData)['Items'].forEach((Item) => Items.add(_fromMap(Item)));
    return Items;
  }

  static Item _fromMap(Map<String, dynamic> map) {
    return new Item(
      externalId: map['id'],
      item_Name: map['name'],
      item_Description: map['description'],
      item_DispPic: map['image_url'],
      location: map['location'],
      //likeCounter: map['like_counter'],
      lostorfound: map['lostorfound'],
      pictures: new List<String>.from(map['pictures']),
      //Itemtributes: new List<String>.from(map['Itemtributes']),
    );
  }
}
