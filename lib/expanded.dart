import 'package:flutter/material.dart';

class ExpandedPage extends StatefulWidget {
  const ExpandedPage({Key? key}) : super(key: key);

  @override
  State<ExpandedPage> createState() => _ExpandedPageState();
}

class _ExpandedPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 500,
            height: 700,
            child: Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.greenAccent,
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.black26,
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.amber,
                    ))
              ],
            ),
          ),
          Container(
            width: 500,
            height: 100,
            alignment: Alignment.center,
            color: Colors.white,
            child: Text(
              "Expanded("
                "  flex: 1,"
                "  child:child)"
            ),
          )
        ],
      ),
    );
  }
}
