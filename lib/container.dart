import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "C o n t a i n e r",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        // widthFactor: 1.5,
        // heightFactor: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 150,),
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment(0, 0),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  //shape: BoxShape.circle,
                  border: Border.all(color: Colors.black26, width: 5),
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.greenAccent),
              child: Text(
                "hello,\nI am container",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
            SizedBox(height: 50,),
            Text("padding: EdgeInsets.all(20),\n"
                "alignment: Alignment(0,0),\n"
                "height: 200,\n"
                "width: 200,\n"
                "decoration: BoxDecoration(\n"
                "      border: Border.all(color: Colors.black26, width: 5),\n"
                "      borderRadius: BorderRadius.circular(40),\n"
                "      color: Colors.greenAccent),\n")
          ],
        ),
      ),
    );
  }
}
