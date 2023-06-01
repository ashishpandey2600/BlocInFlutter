
import 'package:cubitdart/Screens/secondhomepage.dart';
import 'package:cubitdart/cubit/internet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetCubit(),
            // create: (context) => InternetBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SecondHomepage(),
      ),
    );
  }
}
// we cam not emit stae without adding adding an event
