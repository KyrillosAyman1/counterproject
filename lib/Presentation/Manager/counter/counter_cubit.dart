import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int counter = 0;
  void increament() {
    counter++;
    emit(CounterValueChangeState(counter: counter));
  }

  void decreament() {
    counter--;
    emit(CounterValueChangeState(counter: counter)); 
  }
}
