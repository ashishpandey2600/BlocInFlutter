import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Center(
          child: Text("Welcome"),
        ),
        CupertinoButton(child: Text("Signed In"), onPressed: () {}),
        SizedBox(
          height: 10,
        ),
        CupertinoButton(child: Text("Sign in with google"), onPressed: () {})
      ]),
    );
  }
}
