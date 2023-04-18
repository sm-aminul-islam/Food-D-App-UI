import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivary_app/screen/home/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'Food Delivary App',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
