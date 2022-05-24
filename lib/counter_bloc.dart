import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


enum CounterRoad {
  increment,
  decrement,
}

class Counterbloc extends Cubit<int>{

  Counterbloc():super(0);


  void increment()=> emit(state + 1);
  void decrement () => emit(state -1);
}