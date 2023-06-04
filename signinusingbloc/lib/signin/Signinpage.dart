import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signpage extends StatefulWidget {
  const Signpage({super.key});

  @override
  State<Signpage> createState() => _SignpageState();
}

class _SignpageState extends State<Signpage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign In")),
      body: SafeArea(
          child: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "Error wolll show up",
                  style: TextStyle(color: Colors.red),
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                      label: Text("Email"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  obscureText: true,
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                      label: Text("Password"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
                SizedBox(
                  height: 12,
                ),
                CupertinoButton(
                  child: Text("Login"),
                  onPressed: () {},
                  color: Colors.blue,
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
