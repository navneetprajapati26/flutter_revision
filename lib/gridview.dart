import 'package:flutter/material.dart';

class gridViwe extends StatefulWidget {
  const gridViwe({Key? key}) : super(key: key);

  @override
  State<gridViwe> createState() => _gridViweState();
}

class _gridViweState extends State<gridViwe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: GridView.builder(
        itemCount: 30,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.all(10),
                  color: Colors.black26,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 10,
                      width: 10,
                      //padding: EdgeInsets.all(10),
                      color: Colors.amberAccent,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
