import 'package:flutter/material.dart';

class Aston extends StatefulWidget {
  const Aston({super.key, required this.title});
  final String title;

  @override
  State<Aston> createState() => _AstonState();
}

class _AstonState extends State<Aston> {
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
              Image.asset("assets/images/uk/aston.png", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "Fondée en 1913 au Royaume-Uni par Lionel Martin et Robert Bamford, Aston Martin est une marque britannique de voitures de sport et de luxe réputée pour son élégance intemporelle, son raffinement et ses performances exclusives. De ses succès en compétition aux modèles emblématiques comme la DB5 (rendue célèbre par James Bond), la marque incarne le luxe britannique sportif. Après plusieurs crises financières et changements de propriétaires, Aston Martin poursuit aujourd’hui sa renaissance avec une nouvelle génération de modèles puissants et une transition vers l’électrification, tout en préservant son style légendaire et son prestige.",
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}
