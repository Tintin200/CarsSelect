import 'package:flutter/material.dart';

class Italie extends StatefulWidget {
  const Italie({super.key, required this.title});
  final String title;

  @override
  State<Italie> createState() => _ItalieState();
}

class _ItalieState extends State<Italie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
    );
  }
}