import 'package:flutter/material.dart';

class ImageViwe extends StatefulWidget {
  const ImageViwe({Key? key}) : super(key: key);

  @override
  State<ImageViwe> createState() => _ImageViweState();
}

class _ImageViweState extends State<ImageViwe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Container(
          alignment: Alignment.topCenter,
          height: 700,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(360),
                child: Container(
                    child: Image.asset('assets/prajapati.png')),
              ),
              Text(
                "N A V N E E T",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black54),
              ),
              Text(
                "P R A J A P A T I",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black26),
              )
            ],
          ),
        ),
      ),
    );
  }
}
