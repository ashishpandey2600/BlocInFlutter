// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../Blocs/internet_bloc/internet_bloc.dart';
// import '../Blocs/internet_bloc/internet_state.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: BlocConsumer<InternetBloc, InternetState>(
//               builder: (context, state) {
//             if (state is InternetGainedState) {
//               //== to check value
//               // is to check data type
//               return Text("Connected!");
//             } else if (state is InternetLostState) {
//               return Text("Not Connected!");
//             } else {
//               return Text("Loading...");
//             }
//           }, listener: (context, state) {
//             if (state is InternetGainedState) {
//               ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                 content: Text("Internet Connected!"),
//                 backgroundColor: Colors.green,
//               ));
//             } else if (state is InternetLostState) {
//               ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                 content: Text("Internet not connected!"),
//                 backgroundColor: Colors.red,
//               ));
//             }
//           }),
//         ),
//       ),
//     );
//   }
// }
