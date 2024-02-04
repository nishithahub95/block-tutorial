

import 'package:bloc/bloc.dart';
import 'package:block_totorial/bloc/counter/counter_event.dart';
import 'package:block_totorial/bloc/counter/counter_state.dart';

class CounterBlock extends Bloc<CounterEvent,CounterState>{
  CounterBlock() :super( const CounterState()){
     on<IncrementCounter>(increment);
     on<DecrementCounter>(decrement);
  }


  void increment(IncrementCounter event,Emitter<CounterState> emit){
     emit(state.copyWith(counter:state.counter +1));
  }
  void decrement(DecrementCounter event,Emitter<CounterState> emit){
    emit(state.copyWith(counter:state.counter -1));
  }
}