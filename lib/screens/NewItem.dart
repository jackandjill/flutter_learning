import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



class NewItemCreate extends StatefulWidget{

  @override
  NewItemCreateState createState() => new NewItemCreateState();
}

class NewItemCreateState extends State<NewItemCreate>
{

  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.yellow,

        appBar: new AppBar(
          title: new Text("Report"),
          elevation: 5.0,
        ),
      body:
      Center  (
          child: ListView(
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            shrinkWrap: true,
            children: <Widget>[

              itemName,
              SizedBox(height: 18.0),
              itemLocation,
              SizedBox(height: 18.0),
              itemLocation,
              SizedBox(height: 18.0),
              itemTime,
              SizedBox(height: 18.0),
              Report,
              SizedBox(height: 38.0),
            ],
          )
      )



    );



  }



final itemImage = ImageIcon(
  icon = icons
)


  final itemName = TextFormField(
    keyboardType: TextInputType.text,
    autofocus: false,
    initialValue: 'iPhone 6s',
    decoration: InputDecoration(
      hintText: 'Item Name',
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

      border: OutlineInputBorder(

          borderRadius: BorderRadius.circular(32.0)
      ),

    ),
  );

  final itemDescription = TextFormField(
    keyboardType: TextInputType.text,
    autofocus: false,
    initialValue: 'iPhone 6 rose color with wooden casing',
    decoration: InputDecoration(
      hintText: 'Describe item briefly.',
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

      border: OutlineInputBorder(

          borderRadius: BorderRadius.circular(32.0)
      ),

    ),

  );

  final itemLocation = TextFormField(
    keyboardType: TextInputType.text,
    autofocus: false,
    initialValue: 'Hougang',
    decoration: InputDecoration(
      hintText: 'Where did you find it?',
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(

          borderRadius: BorderRadius.circular(32.0)
      ),

    ),

  );

  final itemTime = TextFormField(
    keyboardType: TextInputType.datetime,
    obscureText: true,
    autofocus: false,
    //initialValue: '10.20',
    decoration: InputDecoration(
      hintText: 'When you found it?',
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
      ),

    ),

  );

  

  final Report = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: (){
            print("Signup button clicked");
          },
          color: Colors.lightGreenAccent,
          child:
          Text('Report',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
      )
  );



  final phonenumber = TextFormField(
    keyboardType: TextInputType.phone,
    autofocus: false,
    initialValue: '91166666',
    decoration: InputDecoration(
      hintText: 'Phone Number',
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
      ),

    ),

  );

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