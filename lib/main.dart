import 'package:flutter/material.dart';
import 'package:clubmanagement/Screens/homescreen.dart';
import 'package:clubmanagement/Screens/addMember.dart';
void main()
{
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomePage(),

      routes: {

    'HomeScreen':(context)=>HomePage(),
    'AddMemberScreen':(context)=>AddMember(),

      },
    );
  }
}

