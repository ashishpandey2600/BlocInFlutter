// abstract class InternetState {}

// class InternetInitalState extends InternetState{}
//Classes khali hai to enum mai bhi define kr sakte ho!
//enum Internet state me likha hai

import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum InternetState { Inital, Lost, Gained }

class Internetcubit extends Cubit<InternetState> {
  final Connectivity _connectivity = Connectivity();

  StreamSubscription? connectivitySubscription;
  Internetcubit() : super(InternetState.Inital) {
    connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        emit(InternetState.Gained);
      } else {
        emit(InternetState.Lost);
      }
    });
  }
  @override
  Future<void> close() {
    connectivitySubscription?.cancel();
    return super.close();
  }
}
