import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(counter: 0)) {
    on<IncrementEvent>((event, emit) {
      emit(CounterState(counter: state.counter + 1));
    });

    on<DecrementEvent>((event, emit) {
      if (state.counter > 0) {
        emit(CounterState(counter: state.counter - 1));
      }
    });
  }
}
