import 'package:flutter/material.dart';

class Opel extends StatefulWidget {
  const Opel({super.key, required this.title});
  final String title;

  @override
  State<Opel> createState() => _OpelState();
}

class _OpelState extends State<Opel> {
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
            Image.asset("/assets/images/de/opel.png", width: 150, height: 90,),
            const SizedBox(height: 20,),
            const Text(
              "Opel est une marque automobile allemande fondée en 1862 et aujourd’hui intégrée au groupe Stellantis. Elle se distingue par des véhicules fiables et accessibles, combinant design moderne, efficacité et technologies pratiques pour un large public.",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    ),
    );
  
  }
}
