import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signinusingbloc/signin/Signinpage.dart';
import 'package:signinusingbloc/signin/blocs/sign_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
          Center(
            child: Text(
              "Welcome",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          CupertinoButton(
            child: Text("Signed In with email"),
            onPressed: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => BlocProvider(
                            create: (context) => SignInBloc(),
                            child: const Signpage(),
                          )));
            },
            color: Colors.blue,
          ),
          SizedBox(
            height: 15,
          ),
          CupertinoButton(
            child: Text("Sign in with google"),
            onPressed: () {},
            color: Colors.blue,
          ),
          SizedBox(
            height: 15,
          ),
        ]));
  }
}
