import 'package:flutter/material.dart';

class Alpine extends StatefulWidget {
  const Alpine({super.key, required this.title});
  final String title;

  @override
  State<Alpine> createState() => _AlpineState();
}

class _AlpineState extends State<Alpine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const SingleChildScrollView(
        child: Text("Alpine"),
      ),
    );
  }
}
