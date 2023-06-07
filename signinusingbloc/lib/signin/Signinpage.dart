import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signinusingbloc/signin/blocs/sign_bloc.dart';
import 'package:signinusingbloc/signin/blocs/signin_event.dart';

import 'blocs/signin_state.dart';

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
                BlocBuilder<SignInBloc, SignInState>(
                  builder: (context, state) {
                    if (state is SignInErrorState) {
                      return Text(
                        state.errorMessage,
                        style: TextStyle(color: Colors.red),
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  onChanged: (val) {
                    BlocProvider.of<SignInBloc>(context).add(
                        SignInTExtChangeEvent(emailcontroller.text.trim(),
                            passwordcontroller.text.trim()));
                  },
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
                  onChanged: (val) {
                    BlocProvider.of<SignInBloc>(context).add(
                        SignInTExtChangeEvent(emailcontroller.text.trim(),
                            passwordcontroller.text.trim()));
                  },
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
                BlocBuilder<SignInBloc, SignInState>(
                  builder: (context, state) {
                    if (state is SignInLoadingState) {
                      return CircularProgressIndicator();
                    }
                    return CupertinoButton(
                      onPressed: () {
                        if (state is SignValidState) {
                          BlocProvider.of<SignInBloc>(context).add(
                              SignInSubmittedEvent(emailcontroller.text.trim(),
                                  passwordcontroller.text.trim()));
                        }
                      },
                      color:
                          (state is SignValidState) ? Colors.blue : Colors.grey,
                      child: Text("Login"),
                    );
                  },
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
