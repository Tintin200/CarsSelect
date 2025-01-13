import 'package:flutter/material.dart';

class Citroen extends StatefulWidget {
  const Citroen({super.key, required this.title});
  final String title;

  @override
  State<Citroen> createState() => _CitroenState();
}

class _CitroenState extends State<Citroen> {
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
              const SizedBox(height: 20,),
              Image.asset("", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "",
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}