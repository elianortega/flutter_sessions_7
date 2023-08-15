/// {@template counter_repository}
/// CounterRepository dart package.
/// {@endtemplate}
class CounterRepository {
  /// {@macro counter_repository}
  const CounterRepository();

  int incrementByOne(int counter) => counter + 1;

  int decrementByOne(int counter) => counter - 1;
}
