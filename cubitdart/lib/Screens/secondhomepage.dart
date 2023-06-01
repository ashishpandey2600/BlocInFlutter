import 'package:cubitdart/cubit/internet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondHomepage extends StatelessWidget {
  const SecondHomepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: BlocConsumer<InternetCubit, InternetState>(
              builder: (context, state) {
            if (state == InternetState.Gained) {
              //== to check value
              // is to check data type
              return const Text("Connected11!");
            } else if (state == InternetState.Lost) {
              return const Text("Not Connected!");
            } else {
              return const Text("Loading...");
            }
          }, listener: (context, state) {
            if (state == InternetState.Gained) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                content: Text("Internet Connected!"),
                backgroundColor: Colors.green,
              ));
            } else if (state == InternetState.Lost) {
              ScaffoldMessenger.of(context).showSnackBar(
               const SnackBar(
                content: Text("Internet not connected!"),
                backgroundColor: Colors.red,
              ));
            }
          }),
        ),
      ),
    );
  }
}
