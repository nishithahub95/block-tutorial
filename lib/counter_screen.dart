
import 'package:block_totorial/bloc/counter/counter_bloc.dart';
import 'package:block_totorial/bloc/counter/counter_event.dart';
import 'package:block_totorial/bloc/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Counter App '),
      ),
      body:Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           BlocBuilder<CounterBlock,CounterState>(
             builder: (context,state) {
               return  Text(state.counter.toString(),style: TextStyle(fontSize: 40),);
             }
           ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                    context.read<CounterBlock>().add(IncrementCounter());
                  }, child:const Text('Add')),
                  ElevatedButton(onPressed: (){
                    context.read<CounterBlock>().add(DecrementCounter());
                  }, child:const Text('Reduce')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
