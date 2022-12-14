import 'package:flutter/material.dart';
import 'package:flutter_rivesion/for_package/nemofomic.dart';

class Tast extends StatelessWidget {
  const Tast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: NeuBox(
              height: 100,
              width: 100,
              child: Container(
                height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  child: Text("abnc"))),
        ),
      ),
    );
  }
}
