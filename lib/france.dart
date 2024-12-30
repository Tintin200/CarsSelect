import 'package:flutter/material.dart';

class France extends StatefulWidget {
  const France({super.key, required this.title});
  final String title;

  @override
  State<France> createState() => _FranceState();
}

class _FranceState extends State<France> {
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
