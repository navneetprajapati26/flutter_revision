import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rivesion/columns_and_rows.dart';
import 'package:flutter_rivesion/container.dart';
import 'package:flutter_rivesion/expanded.dart';
import 'package:flutter_rivesion/gesture_detector.dart';
import 'package:flutter_rivesion/gridview.dart';
import 'package:flutter_rivesion/image.dart';
import 'package:flutter_rivesion/listview.dart';
import 'package:flutter_rivesion/login.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color(0xffffff)));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",gjhc
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
