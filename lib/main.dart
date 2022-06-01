import 'package:bloc_counter/bloc/counter_bloc.dart';
import 'package:bloc_counter/counter_with_bloc_state.dart';
import 'package:bloc_counter/counter_with_set_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: const CounterWithSetState(title: 'Flutter Demo Home Page'),
        home: const CounterWithBlocState(),
      ),
    );
  }
}
