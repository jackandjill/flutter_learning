import 'package:meta/meta.dart';


class Item {

  final String item_Name;
  final String item_Description;
  final String item_DispPic;
  final String lostorfound;
  final String location;
  final List<String> pictures;
  final int externalId;

//final dynamic date; //for later


  Item({

    @required this.externalId,
    @required this.item_Name,
    @required this.location,
    @required this.pictures,
    @required this.lostorfound,
    @required this.item_Description,
    @required this.item_DispPic,


  });

  @override
  String toString() {
    return "Item  $externalId is named as $item_Name";
  }


}

