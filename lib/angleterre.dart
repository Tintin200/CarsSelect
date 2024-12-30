import 'package:flutter/material.dart';

class Angleterre extends StatefulWidget {
  const Angleterre({super.key, required this.title});
  final String title;

  @override
  State<Angleterre> createState() => _AngleterreState();
}

class _AngleterreState extends State<Angleterre> {
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