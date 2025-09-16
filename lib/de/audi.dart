import 'package:flutter/material.dart';

class Audi extends StatefulWidget {
  const Audi({super.key, required this.title});
  final String title;

  @override
  State<Audi> createState() => _AudiState();
}

class _AudiState extends State<Audi> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(widget.title),
    ),
    body: SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox
          ],
        ),
      ),
    ),
    ),
  )
  }
}
