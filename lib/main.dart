import 'package:flutter/material.dart';
import 'package:houseapp/screens/Home.dart';
import 'package:houseapp/screens/detailed.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'House App',
      initialRoute:'Home',
      routes: {
        'Home' :(context)=>Home(),
        'Detailed':(context)=>Detailed()
      },
    );
  }
}


