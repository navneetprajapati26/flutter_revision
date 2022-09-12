import 'package:flutter/material.dart';
class myCircal extends StatelessWidget {
  final String story;
  myCircal({required this.story});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amberAccent
        ),
        child: Center(child: Text(story,style: TextStyle(fontSize: 20),)),
      ),
    );
  }
}
