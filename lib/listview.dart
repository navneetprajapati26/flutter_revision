import 'package:flutter/material.dart';
import 'package:flutter_rivesion/circle.dart';
import 'package:flutter_rivesion/mySquare.dart';

class listView extends StatefulWidget {
  const listView({Key? key}) : super(key: key);

  @override
  State<listView> createState() => _listViewState();
}

class _listViewState extends State<listView> {
  final List _post = ['post 1', 'post 2', 'post 3', 'post 4'];
  final List _story = ['story 1', 'story 2', 'story 3', 'story 4','story 5','story 6'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
              child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _story.length,
              itemBuilder: (context,index){
                return myCircal(
                  story: _story[index],
                );
              }
          )
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _post.length,
              itemBuilder: (context, index) {
                return mySquaer(
                  child: _post[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
