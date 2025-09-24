import 'package:flutter/material.dart';

class Porsche extends StatefulWidget {
  const Porsche({super.key, required this.title});
  final String title;

  @override
  State<Porsche> createState() => _PorscheState();
}

class _PorscheState extends State<Porsche> {
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
            Image.asset("/assets/images/de/porsche.png", width: 150, height: 90,),
            const SizedBox(height: 20,),
            const Text(
              "Porsche est une marque automobile allemande fondée en 1931 et intégrée au groupe Volkswagen. Elle est mondialement reconnue pour ses voitures de sport hautes performances, son design emblématique et son savoir-faire alliant luxe, innovation et passion de la conduite.",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    ),
    );
  
  }
}
