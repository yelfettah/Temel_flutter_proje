import 'package:flutter/material.dart';
import 'package:temel_flutter/Image_Widgets.dart';
import 'package:temel_flutter/TemelButonlar.dart';
import 'dropDownButton.dart';
import 'my_home_package.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:ImageOrnekleri(),
        appBar: AppBar(
          
        
        title:Text( "Image Öremkleri"),
      ),
      ),
      title: "Flutter Temelleri",
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      
    );
  }
}

