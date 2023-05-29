import 'package:bloc_flutter/cubits/internetcubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            //        child: BlocConsumer<InternetBloc, InternetState>(
        child: BlocConsumer<Internetcubit, InternetState>(
          listener: (context, state) {
            // TODO: implement listener
            if (state == InternetState.Gained) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Internet connected!"),
                  backgroundColor: Color.fromARGB(255, 30, 230, 37),
                ),
              );
            } else if (state == InternetState.Lost) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Internet  not Connected!"),
                backgroundColor: Colors.red,
                ),
              );
            }
          },
          builder: (context, state) {
            if (state == InternetState.Gained) {
              return const Text("Connected");
            } else if (state == InternetState.Lost) {
              return const Text("Not Connnected");
            } else {
              return const Text("Loading...");
            }
          },
        ),
        // child: BlocListener<InternetBloc, InternetState>(
        //   listener: (context, state) {
        //     // TODO: implement listener

        //   },
        // child: Container(),
        // )
        //   BlocBuilder<InternetBloc, InternetState>(builder: (context, state) {//Build use to make UI
        // if (state is InternetGainedState) {
        //   return Text("Connected");
        // } else if (state is InternetLostState) {
        //   return Text("Not Connnected");
        // } else {
        //   return Text("Loading...");
        // }
      )),
    );
  }
}
