import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:counter_repository/counter_repository.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit({
    required CounterRepository counterRepository,
  })  : _counterRepository = counterRepository,
        super(0);

  final CounterRepository _counterRepository;

  FutureOr<void> increment() {
    emit(_counterRepository.incrementByOne(state));
  }

  FutureOr<void> decrement() {
    emit(_counterRepository.decrementByOne(state));
  }
}
