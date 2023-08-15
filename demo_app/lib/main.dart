// import 'package:demo_app/counter/counter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Builder(
            builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(CounterPage.route());
                },
                child: const Text('Hello World!'),
              );
            },
          ),
        ),
      ),
    );
  }
}
