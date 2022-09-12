import 'package:flutter/material.dart';
class Columns_and_rows extends StatefulWidget {
  const Columns_and_rows({Key? key}) : super(key: key);

  @override
  State<Columns_and_rows> createState() => _Columns_and_rowsState();
}

class _Columns_and_rowsState extends State<Columns_and_rows> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.greenAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amberAccent[400],
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amberAccent[200],
              ),
            ],
          ),
          SizedBox(width: 10,),
          Text("Column",style: TextStyle(fontSize: 30),),
          SizedBox(height: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.greenAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amberAccent[400],
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amberAccent[200],
              ),
              SizedBox(width: 10,),
              Text("Row",style: TextStyle(fontSize: 30),),
            ],
          )
        ],
      ),
    );
  }
}
