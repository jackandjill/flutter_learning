import 'package:flutter/material.dart';

import 'package:elegal_dart/screens/landing_page.dart';
import 'package:elegal_dart/screens/home.dart';
import 'package:elegal_dart/screens/devices.dart';
import 'package:elegal_dart/screens/signup.dart';
import 'package:elegal_dart/screens/signin.dart';
import 'package:elegal_dart/screens/Signed_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'screens/NewItem.dart';
/*
void main()
{
  Devices( new MaterialApp(
    home: new Devices(),

  ));
    
}*/

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) 
  {
    return new MaterialApp(
      title: "Lost & Found",
      routes: <String, WidgetBuilder>
      {
        '/Home' : (BuildContext context) => new Home(),
        '/LandingPage' : (BuildContext context) => new LandingPage(),
        '/Devices' : (BuildContext context) => new Devices(),
         '/Signup' : (BuildContext context) => new Signup(),
          '/Signin' : (BuildContext context) => new Signin(),
          '/TabsView' : (BuildContext context) => new TabsView(),
          '/NewItem' : (BuildContext context) => new NewItemCreate(),

      },
      //home: new Signin(onSubmit: null),
      home: new Signup(),
      );
  }
}