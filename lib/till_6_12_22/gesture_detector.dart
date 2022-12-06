import 'package:flutter/material.dart';

class gesture extends StatefulWidget {
  const gesture({Key? key}) : super(key: key);

  @override
  State<gesture> createState() => _gestureState();
}

class _gestureState extends State<gesture> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number.toString(),
              style: TextStyle(
                  fontSize: (number >= 100)
                      ? 200
                      : number <= -10
                          ? 200
                          : number <= -100
                      ? 150
                      : 300,
                  fontWeight: FontWeight.bold,
                  color: Colors.black26),
            ),
            SizedBox(
              height: 100,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  number++;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: 400,
                    height: 100,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    color: Colors.amberAccent,
                    child: Text(
                      "G E S T U R E + +",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  number--;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: 400,
                    height: 100,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    color: Colors.amberAccent,
                    child: Text(
                      "G E S T U R E - -",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
