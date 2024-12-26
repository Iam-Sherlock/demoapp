import 'package:demoapp/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xff00fff3)),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xffe8f3f1)))),
        iconTheme: IconThemeData(color: Color(0xff334b49)),
        primaryColor: Color(0xff53f8d3),
        primaryColorLight: Color(0xffe2fffc),
        inputDecorationTheme:
            InputDecorationTheme(fillColor: Color(0xff95b1ae)),
        textTheme: TextTheme(bodySmall: TextStyle(color: Color(0xffa5abbd)))
      ),
    );
  }
}
