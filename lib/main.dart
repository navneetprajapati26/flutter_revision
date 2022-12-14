import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rivesion/sqlit_tut/sql_home.dart';

import 'package:flutter_rivesion/till_6_12_22/login.dart';

import 'for_package/test.dart';

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
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      home: SQLhome(),
    );
  }
}
