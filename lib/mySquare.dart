import 'package:flutter/material.dart';
class mySquaer extends StatelessWidget {
  //const mySquaer({Key? key}) : super(key: key);
  final String child;
  mySquaer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 400,
        color: Colors.pink[200],
        child: Center(child: Text(child,style: TextStyle(fontSize: 20),)),
      ),
    );
  }
}
