// import 'dart:async';

// import 'package:bloc_flutter/Blocks/internect_bloc/internet_event.dart';
// import 'package:bloc_flutter/Blocks/internect_bloc/internetstate.dart';
// import 'package:connectivity/connectivity.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class InternetBloc extends Bloc<InternetEvent, InternetState> {
//   Connectivity _connectivity = Connectivity();

//   StreamSubscription? connectivitySubscription;

//   InternetBloc() : super(InternetInitialState()) {
//     //super intializes the bloc

//     on<InternetLostEvent>(
//         (event, emit) => emit(InternetLostState())); //always check the event
//     on<InternetGainedEvent>((event, emit) => emit(InternetGainedState()));

//     connectivitySubscription =
//         _connectivity.onConnectivityChanged.listen((result) {
//       if (result == ConnectivityResult.mobile ||
//           result == ConnectivityResult.wifi) {
//         add(InternetGainedEvent());
//       } else {
//         add(InternetLostEvent());
//       }
//     });

//     @override
//     Future<void> close() {
//       connectivitySubscription?.cancel();
//       return super.close();
//     }
//   }
// }
