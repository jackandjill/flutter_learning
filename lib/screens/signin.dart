import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:elegal_dart/screens/signup.dart';


class Signin extends StatefulWidget {
 
Signin({Key key}) : super (key:key);
final String title = "Signin";
  

  @override
  SigninPage createState() => new SigninPage();


  }

class SigninPage extends State<Signin> {
 

@override
Widget build(BuildContext context) {

final name = TextFormField(
keyboardType: TextInputType.text,
autofocus: false,
initialValue: 'Techie Quickie',
decoration: InputDecoration(
  hintText: 'Name',
  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
  
  border: OutlineInputBorder(
    
    borderRadius: BorderRadius.circular(32.0)
  ),

),
);


final logo = Image(
image: new AssetImage('images/download.jpg'),
fit: BoxFit.cover,

);

final email = TextFormField(
keyboardType: TextInputType.emailAddress,
autofocus: false,
initialValue: 'tq@gmail.com',
decoration: InputDecoration(
  hintText: 'Email',
  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
  
  border: OutlineInputBorder(
    
    borderRadius: BorderRadius.circular(32.0)
  ),

),

);

final password = TextFormField(
keyboardType: TextInputType.text,
obscureText: true,
autofocus: false,
initialValue: 'passsword',
decoration: InputDecoration(
  hintText: 'Password',
  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
  border: OutlineInputBorder(
    
    borderRadius: BorderRadius.circular(32.0)
  ),

),

);


final loginButton = Padding(
  padding: EdgeInsets.symmetric(vertical: 16.0),
  child: Material(
    borderRadius: BorderRadius.circular(30.0),
    shadowColor: Colors.lightBlueAccent.shade100,
    elevation: 5.0,
    child: MaterialButton(
      minWidth: 200.0,
      height: 42.0,
      onPressed: (){
        print("Signin button clicked");
        Navigator.of(context).pushNamed('/NewItem');
      },
      color: Colors.lightBlueAccent,
      
      child: 
        Text('Sign In', 
        style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
    ),
  )
);

final signUpButton = Padding(
  padding: EdgeInsets.symmetric(vertical: 16.0),
  child: Material(
    borderRadius: BorderRadius.circular(30.0),
    shadowColor: Colors.lightBlueAccent.shade100,
    elevation: 5.0,
    child: MaterialButton(
      minWidth: 200.0,
      height: 42.0,
      onPressed: (){
        Navigator.of(context).pushNamed('/Signup');
      },
      color: Colors.lightBlueAccent,
      child: 
        Text('Sign Up', 
        style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
    ),
  )
);





return Scaffold(
  appBar: new AppBar(
      title: new Text("SignIn"),
      elevation: 5.0,
      actions: <Widget>[
        new Icon(
          Icons.help_outline,
          
          )
          ],
  ),
  backgroundColor: Colors.white,
  body: Center  (
    
    child: ListView(
      padding: EdgeInsets.only(left: 24.0, right: 24.0), 
      shrinkWrap: true,
   children: <Widget>[
           new Image.asset("assets/images/download.jpg", fit: BoxFit.cover),
            SizedBox(height: 18.0),
            email,
            SizedBox(height: 18.0),
            password,
            SizedBox(height: 18.0),
            loginButton,
            
            signUpButton,
            SizedBox(height: 38.0),
          ],
      )
      )

  
);
}
}

