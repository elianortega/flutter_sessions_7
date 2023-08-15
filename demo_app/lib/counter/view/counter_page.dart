import 'package:counter_repository/counter_repository.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/counter/cubit/cubit.dart';
import 'package:demo_app/counter/widgets/counter_body.dart';

/// {@template counter_page}
/// A description for CounterPage
/// {@endtemplate}
class CounterPage extends StatelessWidget {
  /// {@macro counter_page}
  const CounterPage({super.key});

  /// The static route for CounterPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const CounterPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(
        counterRepository: const CounterRepository(),
      ),
      child: Scaffold(
        appBar: AppBar(title: const Text('Counter')),
        body: const CounterView(),
      ),
    );
  }
}

/// {@template counter_view}
/// Displays the Body of CounterView
/// {@endtemplate}
class CounterView extends StatelessWidget {
  /// {@macro counter_view}
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CounterBody();
  }
}
