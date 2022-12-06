import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "L O G i N",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 60,),
              Container(
                height: 100,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "e m a i l",
                    //hintText: "e m a i l"
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(

                    labelText: "p a s s w o r d"

                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
