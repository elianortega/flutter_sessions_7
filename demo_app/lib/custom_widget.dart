import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class CustomWidgetT extends StatefulWidget {
  const CustomWidgetT({super.key});

  @override
  State<CustomWidgetT> createState() => _CustomWidgetTState();
}

class _CustomWidgetTState extends State<CustomWidgetT> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
