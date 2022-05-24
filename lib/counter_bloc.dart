import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


enum CounterRoad {
  increment,
  decrement,
}

class Counterbloc extends Cubit<int>{

  Counterbloc():super(0);
  final Random _random = Random();


  // void increment()=> emit(state + 1);
  // void decrement () => emit(state -1);
 
  void increment (dynamic data){
    if(data == CounterRoad.increment){
      return emit(state + _random.nextInt(100));
    }else if(data == CounterRoad.decrement){
      return emit(state - _random.nextInt(100));
    }
  }
}