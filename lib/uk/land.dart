import 'package:flutter/material.dart';

class Land extends StatefulWidget {
  const Land({super.key, required this.title});
  final String title;

  @override
  State<Land> createState() => _LandState();
}

class _LandState extends State<Land> {
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
              Image.asset("assets/images/uk/land.png", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "Fondée en 1948 au Royaume-Uni par Maurice Wilks, Land Rover est une marque emblématique spécialisée dans les véhicules tout-terrain et SUV de luxe. Reconnue pour sa robustesse, sa capacité à franchir tous les terrains et son design distinctif, la marque s’est imposée comme un symbole de performance et d’aventure britannique. Aujourd’hui, sous le groupe Jaguar Land Rover, elle allie technologie moderne, confort et luxe, tout en développant des versions hybrides et électriques.",
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}
