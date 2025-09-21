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
            const SizedBox(height: 20,),
            Image.asset("/assets/images/de/audi.png", width: 150, height: 90,),
            const SizedBox(height: 20,),
            const Text(
              "Audi est une marque automobile allemande haut de gamme, fondée en 1909 et intégrée au groupe Volkswagen. Elle est reconnue pour son design élégant, sa technologie innovante (notamment la transmission intégrale quattro) et son positionnement premium, alliant performance, confort et prestige.",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    ),
    );
  
  }
}
