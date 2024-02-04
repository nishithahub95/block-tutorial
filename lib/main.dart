import 'package:block_totorial/bloc/counter/counter_bloc.dart';
import 'package:block_totorial/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: BlocProvider(
        create: (_) => CounterBlock(),
        child: const CounterScreen(),
      ),
    );
  }
}
