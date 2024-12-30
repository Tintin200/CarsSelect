import 'package:flutter/material.dart';

class Allemagne extends StatefulWidget {
  const Allemagne({super.key, required this.title});
  final String title;

  @override
  State<Allemagne> createState() => _AllemagneState();
}

class _AllemagneState extends State<Allemagne> {
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