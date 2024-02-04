import 'package:equatable/equatable.dart';

class CounterState extends Equatable{
  final int counter;
  const CounterState({
    this.counter=0
});

  CounterState copyWith({int? counter}){//copyWith is a function in equatable
    return CounterState(
      counter: counter??this.counter
    );
  }


  @override
  // TODO: implement props
  List<Object?> get props =>[counter];

}