import 'package:flutter/material.dart';
import 'package:demo_app/counter/cubit/cubit.dart';

/// {@template counter_body}
/// Body of the CounterPage.
///
/// Add what it does
/// {@endtemplate}
class CounterBody extends StatelessWidget {
  /// {@macro counter_body}
  const CounterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'You have pushed the button this many times:',
        ),
        BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text(
              '$state',
              style: Theme.of(context).textTheme.headlineLarge,
            );
          },
        ),
        const SizedBox(width: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () => context.read<CounterCubit>().increment(),
              child: const Icon(Icons.add),
            ),
            const SizedBox(width: 20),
            FloatingActionButton(
              onPressed: () => context.read<CounterCubit>().decrement(),
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ],
    );
  }
}
