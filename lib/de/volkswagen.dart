import 'package:flutter/material.dart';

class Volkswagen extends StatefulWidget {
  const Volkswagen({super.key, required this.title});
  final String title;

  @override
  State<Volkswagen> createState() => _VolkswagenState();
}

class _VolkswagenState extends State<Volkswagen> {
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
            Image.asset("/assets/images/de/volkswagen.png", width: 150, height: 90,),
            const SizedBox(height: 20,),
            const Text(
              "Volkswagen est une marque automobile allemande fondée en 1937 et pilier du groupe Volkswagen. Elle est connue pour ses modèles emblématiques comme la Coccinelle et la Golf, et propose une large gamme de véhicules fiables et innovants, allant des citadines aux SUV, avec un positionnement grand public.",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    ),
    );
  
  }
}
